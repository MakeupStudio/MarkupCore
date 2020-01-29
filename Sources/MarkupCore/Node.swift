//
//  Node.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public indirect enum Node<Context: MarkupContext>: ExpressibleByStringLiteral, ExpressibleByArrayLiteral {
    case raw(String)
    case text(String)
    case comment(String)
    case group([Node] = [])
    case element(String, Set<Context._Attribute>, Node)
    
    public init(stringLiteral value: String) { self = .text(value) }
    public init(arrayLiteral elements: Self...) { self = .group(elements) }
}
