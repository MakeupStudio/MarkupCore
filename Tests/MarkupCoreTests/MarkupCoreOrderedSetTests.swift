import XCTest
@testable import MarkupCore

final class MarkupCoreOrderedSetTests: XCTestCase {

    let input = [0,1,2,2,3,3,3,3,4,4,5,6,7,7,5,3,1,8,9,9,9,1,5,3,2] // [0,1,2,3,4,5,6,7,8,9]
    
    func assert(
        _ values: OrderedSet<Int>,
        _ expectations: [Int],
        file: StaticString = #file,
        line: UInt = #line
    ) {
        if values != expectations {
            let message = "\(Array(values)) != \(expectations)"
            XCTFail(message, file: file, line: line)
            print(":failure {\n  \(Array(values))\n  \(expectations)\n}")
        }
    }
    
    func testInitializers() {
        let result = [0,1,2,3,4,5,6,7,8,9]
        assert(input.unique(), result)
        assert(OrderedSet(input), result)
        assert([0,1,2,2,3,3,3,3,4,4,5,6,7,7,5,3,1,8,9,9,9,1,5,3,2], result)
    }
    
    func testRemoval() {
        let result = (
            first: [1,2,3,4,5,6,7,8,9], // 0
            last:  [0,1,2,3,4,5,6,7,8], // 9
            mid:   [0,1,2,3,4,6,7,8,9]  // 5
        )
        let initialInputs = (
            first: input.unique(),
            mid:   input.unique(),
            last:  input.unique()
        )
        
        assert(initialInputs.first.removing(0), result.first)
        assert(initialInputs.last.removing(9), result.last)
        assert(initialInputs.mid.removing(5), result.mid)
        
        assert(initialInputs.first.removing(at: 0), result.first)
        assert(initialInputs.last.removing(at: 9), result.last)
        assert(initialInputs.mid.removing(at: 5), result.mid)
        
        var inputs = initialInputs
        
        inputs.first.remove(0)
        inputs.last.remove(9)
        inputs.mid.remove(5)
        
        assert(inputs.first, result.first)
        assert(inputs.last, result.last)
        assert(inputs.mid, result.mid)
        
        inputs = initialInputs
        
        inputs.first.remove(at: 0)
        inputs.last.remove(at: 9)
        inputs.mid.remove(at: 5)
        
        assert(inputs.first, result.first)
        assert(inputs.last, result.last)
        assert(inputs.mid, result.mid)
    }
    
    func testInserting() {
        let initialInputs = input.unique()
        var inputs = initialInputs
        var result = [0,1,2,3,4,5,6,7,8,9]
        
        func inserting(_ value: Int, toResultAt index: Int) -> [Int] {
            result.dropLast(result.count - index) + // first 5
            [value] +                               // new
            result.dropFirst(index)                 // rest of numbers
        }
        
        func reset() {
            inputs = initialInputs
            result = [0,1,2,3,4,5,6,7,8,9]
        }
        
        // MARK: New
        
        // new to end
        result.append(-1)
        assert(inputs.appending(-1), result)
        
        inputs.append(-1)
        assert(inputs, result)
        
        reset()
        
        // new to start
        result = [-1] + result
        assert(inputs.inserting(-1, at: 0), result)
        
        inputs.insert(-1, at: 0)
        assert(inputs, result)
        
        reset()
        
        // new to mid
        result = inserting(-1, toResultAt: 5)
        
        assert(inputs.inserting(-1, at: 5), result)
        
        inputs.insert(-1, at: 5)
        assert(inputs, result)
        
        // MARK: Old
        
        reset()
        
        // old first to end
        result.append(result.removeFirst())
        assert(inputs.appending(inputs.first!), result)
        
        inputs.append(inputs.first!)
        assert(inputs, result)
        
        reset()
        
        // old last to end
        assert(inputs.appending(inputs.last!), result)
        
        inputs.append(inputs.last!)
        assert(inputs, result)
        
        reset()
        
        // old last to mid
        result = inserting(inputs.last!, toResultAt: 5)
        result.removeLast()
        assert(inputs.inserting(inputs.last!, at: 5), result)
        
        inputs.insert(inputs.last!, at: 5)
        assert(inputs, result)
    }
}
