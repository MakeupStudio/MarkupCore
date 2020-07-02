//
//  DocumentContent.swift
//  GenericDocument
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

import Foundation

public protocol DocumentContent {
    associatedtype Body
    var body: Body { get }
}

public struct MarkupDocumentContent: DocumentContent {
    public var body: Node
    public init(_ body: Node) {
        self.body = body
    }
}

public struct StringDocumentContent: DocumentContent {
    public var body: String
    public init(_ body: String) {
        self.body = body
    }
}

public struct DataDocumentContent: DocumentContent {
    public var body: Data
    public init(_ body: Data) {
        self.body = body
    }
}
