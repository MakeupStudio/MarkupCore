//
//  NodeBuilder.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

@_functionBuilder
public struct NodeBuilder<Context: MarkupContext> {
    public static func buildBlock<Content: MarkupNodeWrapper>(_ children: Content...)
        -> Content where Content.Context == Context {
            children.count == 1 ? children[0] : .init(.group(children.map { $0.node }))
    }
    
    public static func buildIf<Content: MarkupNodeWrapper>(_ content: Content?)
        -> Content where Content.Context == Context { content ?? .init(.group()) }
    
    public static func buildEither<Content: MarkupNodeWrapper>(first: Content)
        -> Content where Content.Context == Context { first }
    
    public static func buildEither<Content: MarkupNodeWrapper>(second: Content)
        -> Content where Content.Context == Context { second }
}
