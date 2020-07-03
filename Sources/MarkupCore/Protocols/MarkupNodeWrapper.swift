//
//  MarkupNodeWrapper.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol NodeProvider {
    var node: Node { get }
}

public protocol NodeInitializable {
    init(node: Node)
}

public protocol AnyMarkupNodeWrapper: Markup, NodeInitializable {}

extension AnyMarkupNodeWrapper {
    public init(_ node: Node) { self.init(node: node) }
    public var body: some Markup { node }
}

public protocol MarkupNodeWrapper: AnyMarkupNodeWrapper {
    associatedtype Context: MarkupContext
    var node: Node { get }
    init(node: Node)
}
