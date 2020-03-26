//
//  OrderedSet.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

import Foundation

extension Sequence where Iterator.Element: Hashable {
    public func unique() -> OrderedSet<Element> { .init(self) }
}

public struct OrderedSet<Element: Hashable>: BidirectionalCollection, Equatable, ExpressibleByArrayLiteral {
    
    public typealias Index = Int
    private var set: Set<Element> = []
    private var storage: [Element] = []
    
    public static func ==<T: BidirectionalCollection>(lhs: Self, rhs: T)
    -> Bool where T.Element == Element, T.Index == Index {
        guard lhs.count == rhs.count else { return false }
        for i in 0..<lhs.count { guard lhs[i] == rhs[i] else { return false }}
        return true
    }
    
    public static func !=<T: BidirectionalCollection>(lhs: Self, rhs: T)
    -> Bool where T.Element == Element, T.Index == Index { !(lhs == rhs) }
    
    public init(arrayLiteral elements: Element...) {
        self.init(elements)
    }
    
    public init<T: Sequence>(_ sequence: T) where T.Element == Element {
        sequence.forEach { element in
            if !set.contains(element) {
                set.insert(element)
                storage.append(element)
            }
        }
    }
    
    public var startIndex: Int { storage.startIndex }
    public var endIndex: Int { storage.endIndex }
    public var count: Int { storage.count }
    
    public func index(after i: Index) -> Index { storage.index(after: i) }
    public func index(before i: Index) -> Index { storage.index(before: i) }
    
    public subscript(index: Index) -> Element {
        get { storage[index] }
        set {
            guard newValue != storage[safe: index] else { return }
            if let oldValue = storage[safe: index] { set.remove(oldValue) }
            set.insert(newValue)
            storage[index] = newValue
        }
    }
    
    private func barrier(for element: Element, _ forced: Bool) -> Bool {
        !(set.contains(element) && !forced)
    }
    
    @discardableResult
    public mutating func remove(_ element: Element) -> Element? {
        guard let removed = set.remove(element) else { return nil }
        storage.remove(at: storage.firstIndex(of: removed)!)
        return removed
    }
    
    @discardableResult
    public mutating func insert(_ element: Element, at index: Index, forced: Bool = true)
    -> (inserted: Bool, memberAfterInsert: Element) {
        guard barrier(for: element, forced) else {
            return (false, set.first(where: { $0 == element })!)
        }
        remove(element)
        
        let a = dropLast(Swift.max(0, count - index))
        let b = [element]
        let c = dropFirst(Swift.min(count, index))
        
        storage = a + b + c
        return set.insert(element)
    }
    
    @discardableResult
    public mutating func append(_ element: Element, forced: Bool = true)
    -> (appended: Bool, memberAfterAppend: Element) {
        let result = insert(element, at: count, forced: forced)
        return (result.inserted, result.memberAfterInsert)
    }
       
    @discardableResult
    public mutating func remove(at index: Index) -> Element? {
        guard storage.indices.contains(index) else { return nil }
        return set.remove(storage.remove(at: index))
    }
    
    public func inserting(_ element: Element, at index: Index, forced: Bool = true) -> Self {
        var output = self
        output.insert(element, at: index, forced: forced)
        return output
    }
    
    public func appending(_ element: Element, forced: Bool = true) -> Self {
        var output = self
        output.append(element, forced: forced)
        return output
    }
    
    public func removing(at index: Index) -> Self {
        var output = self
        output.remove(at: index)
        return output
    }
    
    public func removing(_ element: Element) -> Self {
        var output = self
        output.remove(element)
        return output
    }
    
}
