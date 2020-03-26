//
//  Node+Rendering.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 2/3/20.
//

// TODO: I'm sure it can be improved
// - Escapings can be refactored
// - There should be an optimization mechanizm (prerendering)
// see Vapor/HTMLKit for example of implementation

// MARK: - Rendering.Public

extension Node: CustomRenderable {
    
    public func render(indentedBy indentation: Indentation) -> String {
        var output = String()
        render(into: &output, indentedBy: indentation)
        return output
    }
    
    public func render(into output: inout String, indentedBy indentation: Indentation) {
        render(self, into: &output, indentedBy: indentation)
    }
    
}

// MARK: - Rendering.Private

extension Node {
    
    func render(_ node: Node, into output: inout String, indentedBy indentation: Indentation) {
        switch node {
        case let .raw(string):
            output.append(string.wrap.raw.by(indentation))
            
        case let .text(string):
            output.append(string.wrap.text.by(indentation))
            
        case let .comment(string):
            output.append(string.wrap.comment.by(indentation))
            
        case let .element(tag, attributes, node, isSelfClosing: isSelfClosing):
            let tag = tag.lowercased()
            
            if isSelfClosing {
                output.append((tag + render(attributes)).wrap.voidTag.by(indentation))
            } else {
                output.append((tag + render(attributes)).wrap.nonVoidTag.by(indentation))
                if !node.isEmpty { render(node, into: &output, indentedBy: indentation.next) }
                output.append(tag.wrap.closingTag.by(indentation))
            }
            
        case let .group(nodes):
            render(nodes, into: &output, indentedBy: indentation)
            
        case .empty:
            return
        }
    }
    
    func render(_ nodes: [Node], into output: inout String, indentedBy indentation: Indentation) {
        nodes.forEach { render($0, into: &output, indentedBy: indentation) }
    }
    
    func render<Attributes: Collection>(_ attributes: Attributes) -> String where Attributes.Element == ErasedMarkupAttribute {
        attributes.isEmpty ? "" :
            "\(attributes.reduce(into: " ", { $0 += $1.escaping.rawValue + " " }).dropLast(1))"
    }
    
}

// MARK: - Helpers

fileprivate extension ErasedMarkupAttribute {
    
    var escaping: String._IndentationWrap {
        let value = self.value.replacingOccurrences(of: "\"", with: "&quot;")
        return .init(rawValue: "\(key)=\"\(value)\"")
    }

}

fileprivate extension String {
    
    var wrap: _HtmlEscapingWrap { .init(rawValue: self) }
    
    struct _IndentationWrap {
        var rawValue: String
        func by(_ indentation: Indentation) -> String {
            rawValue.render(indentedBy: indentation)
        }
    }
    
    struct _HtmlEscapingWrap {
        var rawValue: String
        
        var raw: _IndentationWrap { .init(rawValue: rawValue) }
        
        var comment: _IndentationWrap { .init(rawValue:
            "<!--\(rawValue)-->"
                .replacingOccurrences(of: ">", with: "&gt;")
            )
        }
        
        var text: _IndentationWrap { .init(rawValue:
            rawValue
                .replacingOccurrences(of: "&", with: "&amp;")
                .replacingOccurrences(of: "<", with: "&lt;")
            )
        }
        
        var voidTag: _IndentationWrap { .init(rawValue: "<\(rawValue)/>") }
            
        var nonVoidTag: _IndentationWrap { .init(rawValue: "<\(rawValue)>") }
        
        var closingTag: _IndentationWrap { .init(rawValue: "</\(rawValue)>") }
        
        func by(_ indentation: Indentation) -> String {
            rawValue.render(indentedBy: indentation)
        }
    }

}
