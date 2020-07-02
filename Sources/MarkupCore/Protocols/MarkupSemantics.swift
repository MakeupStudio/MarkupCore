//
//  MarkupSemantics.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol AnyMarkupSemantics {}

public protocol MarkupSemantics: AnyMarkupSemantics {}

public enum NoMarkupSemantics: MarkupSemantics {}
