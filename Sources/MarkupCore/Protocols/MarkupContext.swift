//
//  Context.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol MarkupContext {
    associatedtype _Attribute: _HashableMarkupAttribute
}

public protocol ChildMarkupContext: MarkupContext {
    associatedtype RootContext: MarkupContext
}
