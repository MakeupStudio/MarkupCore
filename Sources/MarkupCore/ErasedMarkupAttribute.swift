//
//  ErasedMarkupAttribute.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 2/3/20.
//

import Foundation

public struct ErasedMarkupAttribute: _HashableMarkupAttribute {
    public let key: String
    public let value: String
    private let rendered: String
    
    init<Attribute: _MarkupAttribute>(_ attribute: Attribute) {
        self.key = attribute.key
        self.value = attribute.value
        self.rendered = attribute.render()
    }
    
    public func render() -> String { rendered }
}
