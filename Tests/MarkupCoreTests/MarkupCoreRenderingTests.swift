//import XCTest
//@testable import MarkupCore
//
//extension Node {
//    init(_ name: String, _ child: Node) {
//        self = .element(name, [], child)
//    }
//}
//
//final class MarkupCoreRenderingTests: XCTestCase {
//
//    func a(title: String) -> Node {
//        Node.future(title) { .element("a", [], .text($0)) }
//    }
//
//    func testPrerendering() {
//        let html = Node("div",
//            .group([
//                Node("h1",
//                     a(title: "Hello, World")
//                ),
//                Node("div",
//                    Node("div",
//                        Node("h2",
//                             .text("It,s me")
//                        )
//                    )
//                )
//            ])
//        )
//        print(html.renderTagsOnly())
//        print(html.prerendered().prerendered().renderTagsOnly())
//        print(html.render(indentedBy: 2))
//        print(html.prerendered().render(indentedBy: 2))
//
//
//    }
//
//    func testOptimized() {
//        if #available(OSX 10.15.0, *) {
//            let a = A(content: .init(title: "Hello, World!"))
//            print(a.body.node.renderTagsOnly())
//            measure {
//                for _ in 0...10000 {
//                    _ = a.body.node.render(indentedBy: .default)
//                }
//            }
//        }
//    }
//
//    func testNonOptimized() {
//        if #available(OSX 10.15.0, *) {
//            let context = Context<A.Content>(wrappedValue: .init(title: "Hello, World!"))
//            let nonOptimized = A.body(context).node
//            print(nonOptimized.renderTagsOnly())
//            measure {
//                for _ in 0...10000 {
//                    _ = nonOptimized.render(indentedBy: .default)
//                }
//            }
//        }
//    }
//
//    static var allTests = [
//        ("testPrerendering", testPrerendering)
//    ]
//}
//
//
