//
//  Attribute.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public typealias _HashableMarkupAttribute = AnyMarkupAttributeProtocol & Hashable
public typealias HashableMarkupAttribute = MarkupAttribute & _HashableMarkupAttribute

public protocol AnyMarkupAttributeProtocol: Renderable {
    var key: String { get }
    var value: String { get }
}

public protocol MarkupAttribute: AnyMarkupAttributeProtocol {
    init(key: String, value: String)
}

// MARK: Convenience initializers

extension MarkupAttribute {
    
    public init(_ item: (key: String, value: String)) {
        self.init(item.key, item.value)
    }
    
    public init(_ key: String, _ value: String) {
        self.init(key: key, value: value)
    }
    
}

extension AnyMarkupAttributeProtocol {
    
    public var erased: AnyMarkupAttribute { .init(self) }
    
    // MARK: Hashable
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        lhs.key == rhs.key
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }
    
}

public struct AnyMarkupAttribute: _HashableMarkupAttribute {
    public let key: String
    public let value: String
    private let rendered: String
    
    init<Attribute: AnyMarkupAttributeProtocol>(_ attribute: Attribute) {
        self.key = attribute.key
        self.value = attribute.value
        self.rendered = attribute.render()
    }
    
    public func render() -> String { rendered }
}
