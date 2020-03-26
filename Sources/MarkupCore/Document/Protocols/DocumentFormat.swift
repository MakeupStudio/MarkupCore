//
//  DocumentFormat.swift
//  GenericDocument
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol DocumentFormat {
    associatedtype Content: DocumentContent
}
