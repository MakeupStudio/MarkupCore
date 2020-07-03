//
//  NodeBuilder.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

//@_functionBuilder
//public struct MarkupBuilder {
//
//    // MARK: BuildBlock
//    
//    public static func buildBlock<T1: Markup>(_ children: T1...) -> some Markup {
//        Node.group(children.map { $0.node })
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup
//    >(_ t0: T0, _ t1: T1) -> some Markup {
//        Node.group([t0.node, t1.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup
//    >(_ t0: T0, _ t1: T1,_ t2: T2) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup
//    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3 ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup
//    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup, T7: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup, T7: Markup, T8: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node])
//    }
//
//    public static func buildBlock<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup, T7: Markup, T8: Markup, T9: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8, _ t9: T9
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node, t9.node])
//    }
//
//    // MARK: BuildDo
//
//    public static func buildDo<T1: Markup>(_ children: T1...) -> some Markup {
//        Node.group(children.map { $0.node })
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup
//    >(_ t0: T0, _ t1: T1) -> some Markup {
//        Node.group([t0.node, t1.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup
//    >(_ t0: T0, _ t1: T1,_ t2: T2) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup
//    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3 ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup
//    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup, T7: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup, T7: Markup, T8: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node])
//    }
//
//    public static func buildDo<
//        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
//        T5: Markup, T6: Markup, T7: Markup, T8: Markup, T9: Markup
//    >(
//        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8, _ t9: T9
//    ) -> some Markup {
//        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node, t9.node])
//    }
//
//    // MARK: BuildIf
//
//    public static func buildIf<T: Markup>(_ content: T) -> some Markup { content.node }
//
//    public static func buildEither<T: Markup>(first: T) -> some Markup { first }
//
//    public static func buildEither<T: Markup>(second: T) -> some Markup { second }
//
//    // MARK: BuildOptional
//
//    public static func buildOptional<T: Markup>(_ content: T) -> some Markup { content.node }
//}

@_functionBuilder
public struct NodeBuilder<Context: MarkupContext, Semantics: MarkupSemantics> {
    
    // MARK: BuildBlock
    
    public static func buildBlock<T1: Markup>(_ children: T1...) -> NodeWrapper<Context, Semantics> {
        Node.group(children.map { $0.node }).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup
    >(_ t0: T0, _ t1: T1) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup
    >(_ t0: T0, _ t1: T1,_ t2: T2) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3 ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node]).wrap()
    }
    
    public static func buildBlock<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup, T9: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8, _ t9: T9
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node, t9.node]).wrap()
    }
    
    // MARK: BuildDo
    
    public static func buildDo<T1: Markup>(_ children: T1...) -> NodeWrapper<Context, Semantics> {
        Node.group(children.map { $0.node }).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup
    >(_ t0: T0, _ t1: T1) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup
    >(_ t0: T0, _ t1: T1,_ t2: T2) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3 ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup
    >(_ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node]).wrap()
    }
    
    public static func buildDo<
        T0: Markup, T1: Markup, T2: Markup, T3: Markup, T4: Markup,
        T5: Markup, T6: Markup, T7: Markup, T8: Markup, T9: Markup
    >(
        _ t0: T0, _ t1: T1, _ t2: T2, _ t3: T3, _ t4: T4, _ t5: T5, _ t6: T6, _ t7: T7, _ t8: T8, _ t9: T9
    ) -> NodeWrapper<Context, Semantics> {
        Node.group([t0.node, t1.node, t2.node, t3.node, t4.node, t5.node, t6.node, t7.node, t8.node, t9.node]).wrap()
    }
    
    // MARK: BuildIf
    
    public static func buildIf<T: Markup>(_ content: T) -> NodeWrapper<Context, Semantics> { content.node.wrap() }
    
    public static func buildEither<T: Markup>(first: T) -> NodeWrapper<Context, Semantics> { first.node.wrap() }
    
    public static func buildEither<T: Markup>(second: T) -> NodeWrapper<Context, Semantics> { second.node.wrap() }
    
    // MARK: BuildOptional
    
    public static func buildOptional<T: Markup>(_ content: T) -> NodeWrapper<Context, Semantics> { content.node.wrap()
    }
}
