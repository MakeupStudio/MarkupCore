//
//  MarkupNodeWrapper.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol MarkupNodeWrapper {
    associatedtype Context: MarkupContext
    var node: Node<Context> { get }
    init(node: Node<Context>)
}

extension MarkupNodeWrapper {
    
    public init(_ node: Node<Context>) { self.init(node: node) }
    
}
