//
//  NodeBuilder.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

@_functionBuilder
public enum NodeBuilder {
    public static func buildBlock(_ parts: NodeProvider...) -> NodeProvider { buildBlock(parts) }
    public static func buildBlock(_ parts: [NodeProvider]) -> NodeProvider { Node.group(parts.map(\.node)) }
    public static func buildDo(_ parts: NodeProvider...) -> NodeProvider { buildDo(parts) }
    public static func buildDo(_ parts: [NodeProvider]) -> NodeProvider { Node.group(parts.map(\.node)) }
    public static func buildIf(_ part: NodeProvider) -> NodeProvider { part.node }
    public static func buildEither(first: NodeProvider) -> NodeProvider { first.node }
    public static func buildEither(second: NodeProvider) -> NodeProvider { second.node }
    public static func buildOptional(_ part: NodeProvider?) -> NodeProvider { part?.node ?? .empty }
}

@_functionBuilder
public enum MarkupBuilder {

    // MARK: BuildBlock
    public static func buildBlock<
        T0: Markup>
    (_ t0: T0) -> some Markup {
        NodeBuilder.buildBlock(t0).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup
    >(_ t0: T0, _ t1: T1) -> some Markup {
        NodeBuilder.buildBlock(t0, t1).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup
    >(_ t0: T0, _ t1: T1,_ t2: T2) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3 ) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3, t4).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5
    ) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3, t4, t5).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6
    ) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3, t4, t5, t6).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6, _ t7: T7
    ) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3, t4, t5, t6, t7).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8
    ) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3, t4, t5, t6, t7, t8).node
    }

    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup, T9: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8, _ t9: T9
    ) -> some Markup {
        NodeBuilder.buildBlock(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9).node
    }

    // MARK: BuildDo

    public static func buildDo<
        T0: Markup>
    (_ t0: T0) -> some Markup {
        NodeBuilder.buildDo(t0).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup
    >(_ t0: T0, _ t1: T1) -> some Markup {
        NodeBuilder.buildDo(t0, t1).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup
    >(_ t0: T0, _ t1: T1,_ t2: T2) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3 ) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3, t4).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5
    ) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3, t4, t5).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6
    ) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3, t4, t5, t6).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6, _ t7: T7
    ) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3, t4, t5, t6, t7).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8
    ) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3, t4, t5, t6, t7, t8).node
    }

    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup, T9: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4,
        _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8, _ t9: T9
    ) -> some Markup {
        NodeBuilder.buildDo(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9).node
    }

    // MARK: BuildIf

    public static func buildIf<T: Markup>(_ part: T) -> some Markup { NodeBuilder.buildIf(part).node }
    public static func buildEither<T: Markup>(first: T) -> some Markup { NodeBuilder.buildEither(first: first).node }
    public static func buildEither<T: Markup>(second: T) -> some Markup { NodeBuilder.buildEither(second: second).node }

    // MARK: BuildOptional

    public static func buildOptional<T: Markup>(_ part: T?) -> some Markup { NodeBuilder.buildOptional(part).node }
}
