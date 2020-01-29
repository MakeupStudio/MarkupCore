//
//  Attribute.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol MarkupAttribute: Renderable, Hashable {
    var key: String { get }
    var value: String { get }
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
    
    // MARK: Hashable
    
    static func ==(lhs: Self, rhs: Self) -> Bool {
        lhs.key == rhs.key
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }
    
}
