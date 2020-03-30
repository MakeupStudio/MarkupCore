//
//  Attribute.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public typealias _HashableMarkupAttribute = _MarkupAttribute & Hashable
public typealias HashableMarkupAttribute = MarkupAttribute & _HashableMarkupAttribute

public protocol _MarkupAttribute: Renderable {
    var key: String { get }
    var value: String { get }
}

public protocol MarkupAttribute: _MarkupAttribute {
    init(key: String, value: String)
}

extension MarkupAttribute {
    
    // MARK: Convenience
    
    public init(_ item: (key: String, value: String)) {
        self.init(item.key, item.value)
    }
    
    public init(_ key: String, _ value: String) {
        self.init(key: key, value: value)
    }
    
}

extension _MarkupAttribute {
    
    public var erased: ErasedMarkupAttribute { .init(self) }
    
    // MARK: Hashable
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        lhs.key == rhs.key
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }
    
}
