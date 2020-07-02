//
//  Node.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public indirect enum Node: ExpressibleByStringLiteral, ExpressibleByArrayLiteral {
    public typealias Attributes = OrderedSet<ErasedMarkupAttribute>
    case raw(String)
    case text(String)
    case comment(String)
    case group([Node] = [])
    case element(String, Attributes = [], Node = .empty, isSelfClosing: Bool = false)
//    case future(() -> Node)
    case empty
    
//    static public func future<U>(_ args: U, closure: @escaping (U) -> Node) -> Node { .future({ closure(args) }) }
//    static public func future(_ node: @escaping @autoclosure () -> Node) -> Node { .future((), closure: node) }
    
    public init(stringLiteral value: String) { self = .text(value) }
    public init(arrayLiteral elements: Self...) { self = .group(elements) }
    
    public var isEmpty: Bool {
        switch self {
        case .element(_,_,_,isSelfClosing: let isSelfClosing):
            return isSelfClosing
        case let .comment(string), let .raw(string), let .text(string):
            return string.isEmpty
        case let .group(children):
            return children.isEmpty
        case .empty:
            return true
//        case .future:
//            return false
        }
    }
    
//    internal var isPrerenderable: Bool {
//        switch self {
//        case .raw, .future: return false
//        case .comment, .text, .empty: return true
//        case let .element(_,_,node,_): return node.isPrerenderable
//        case let .group(nodes):
//            return nodes.isEmpty || nodes.allSatisfy(\.isPrerenderable)
//        }
//    }
    
}
