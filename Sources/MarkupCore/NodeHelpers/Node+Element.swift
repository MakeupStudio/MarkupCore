//
//  HTMLNode+Element.swift
//  Makeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

extension Node {
    
    public var asElement: Element? { Element(self) }
    
    public struct Element {
        public let tag: String
        public let attributes: Node.Attributes
        public let content: Node
        public let isSelfClosing: Bool
        
        init?(_ node: Node) {
            guard case let .element(tag, attributes, content, isSelfClosing) = node else { return nil }
            self.init(tag: tag, attributes: attributes, content: content, isSelfClosing: isSelfClosing)
        }
        
        init(tag: String, attributes: Node.Attributes, content: Node, isSelfClosing: Bool) {
            self.tag = tag
            self.attributes = attributes
            self.content = content
            self.isSelfClosing = isSelfClosing
        }
        
        public func with(tag: String) -> Self {
            .init(tag: tag, attributes: attributes, content: content, isSelfClosing: isSelfClosing)
        }
        
        public func with(attributes: Node.Attributes) -> Self {
            .init(tag: tag, attributes: attributes, content: content, isSelfClosing: isSelfClosing)
        }
        
        public func updatingAttributes(using attribute: AnyMarkupAttribute) -> Self {
            with(attributes: self.attributes.appending(attribute, forced: true))
        }
        
        public func with(content: Node) -> Self {
            .init(tag: tag, attributes: attributes, content: content, isSelfClosing: isSelfClosing)
        }
        
        public func wrap() -> Node { .element(tag, attributes, content, isSelfClosing: isSelfClosing) }
        
    }
    
}
