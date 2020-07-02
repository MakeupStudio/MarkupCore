//
//  Markup.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 26/5/20.
//  Copyright © 2020 MakeupStudio. All rights reserved.
//

@available(OSX 10.15.0, *)
public protocol Markup {
    associatedtype Body: Markup
    var body: Body { get }
}

@available(OSX 10.15.0, *)
extension Node: Markup {
    public var body: some Markup { self }
}


//internal protocol _ContextProtocol {}
//
//@propertyWrapper
//@dynamicMemberLookup
//public final class Context<T>: _ContextProtocol {
//    internal var content: T?
//    
//    public var wrappedValue: T {
//        get { content! }
//        set { content = newValue }
//    }
//    
//    public init(wrappedValue: T) {
//        self.content = wrappedValue
//    }
//    
//    public subscript<V>(dynamicMember keyPath: WritableKeyPath<T, V>) -> V {
//        get { wrappedValue[keyPath: keyPath] }
//        set { wrappedValue[keyPath: keyPath] = newValue }
//    }
//}
//
///// Hashable wrapper for any metatype value.
//struct AnyHashableMetatype : Hashable {
//    let wrapped: Any.Type
//    
//    init(_ type: Any.Type) {
//        self.wrapped = type
//    }
//
//    static func ==(lhs: AnyHashableMetatype, rhs: AnyHashableMetatype) -> Bool {
//        return lhs.wrapped == rhs.wrapped
//    }
//    
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(ObjectIdentifier(wrapped))
//    }
//}
//
////struct AnyMarkup: Markup {
////    init<T: Markup>(_ value: T) {
////        value.body
////    }
////}
//
//class MarkupView<Content: Markup> {
//    var content: Content
//    
//    func render() {
//        
//    }
//    
//    init(root content: Content) {
//        self.content = content
//    }
//}
//
//struct A: Markup {
//    struct Data {
//        var href: String
//        var content: String
//    }
//    
//    @Context
//    public var context: Data
//    
//    var body: some Markup {
//        Node.future(.raw("<a href=\"\(context.href)\">\(context.content)</a>"))
//    }
//}
//
//struct MyMP: Markup {
//    var body: some Markup {
//        A(context: .content(.init(href: "", content: "")))
//    }
//}
