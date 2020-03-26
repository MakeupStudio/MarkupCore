//
//  Document.swift
//  GenericDocument
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public struct Document<Format: DocumentFormat> {
    
    public typealias Content = Format.Content
    public var content = [Content]()
    
}

extension Document: Renderable where Format.Content.Body: Renderable {
    
    public func render() -> String {
        content
            .map { $0.body.render() }
            .joined()
    }
    
}

extension Document: CustomRenderable where Content.Body: CustomRenderable {
    
    public func render(indentedBy indentation: Indentation = .default) -> String {
        content
            .map { $0.body.render(indentedBy: indentation) }
            .joined(separator: indentation.suffix)
    }
    
}
