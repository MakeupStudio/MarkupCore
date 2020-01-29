//
//  NodeWrapper.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public struct NodeWrapper<Context: MarkupContext, Semantics: MarkupSemantics>: MarkupNodeWrapper {
    public let node: Node<Context>
    public init(node: Node<Context>) { self.node = node }
}
