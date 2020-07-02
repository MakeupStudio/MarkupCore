//
//  HTMLNode+Comment.swift
//  Makeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

extension Node {
    
    public var asComment: Comment? { Comment(self) }
    
    public struct Comment {
        public let content: String
        
        init?(_ node: Node) {
            guard case let .comment(content) = node
            else { return nil }
            self.init(content: content)
        }
        
        init(_ content: String) {
            self.init(content: content)
        }
        
        init(content: String = "") {
            self.content = content
        }
        
        public func with(content: String) -> Self {
            .init(content: content)
        }
        
        public func wrap() -> Node { .comment(content) }
    }
    
}
