//
//  Renderable.swift
//  GenericDocument
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

public protocol CustomRenderable: Renderable {
    func render(indentedBy indentation: Indentation) -> String
}

extension CustomRenderable {
    public func render() -> String { render(indentedBy: .default) }
}

extension String: CustomRenderable {
    
    /// Renders a string with specified indentation.
    public func render(indentedBy indentation: Indentation) -> String {
        indentation.indented(self)
    }
    
}

extension Array: Renderable where Element: Renderable {
    
    /// Reduces all child nodes renders into one string
    public func render() -> String {
        reduce(into: "") { string, node in
            string.append(node.render())
        }
    }
    
}

extension Array: CustomRenderable where Element: CustomRenderable {
    
    /// Reduces all child nodes renders into one string
    public func render(indentedBy indentation: Indentation) -> String {
        reduce(into: "") { string, node in
            string.append(node.render(indentedBy: indentation))
        }
    }
    
}
