//
//  HTMLNode+Group.swift
//  Makeup
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

extension Node {
    
    public var asGroup: Group? { Group(self) }
    
    public struct Group {
        public let nodes: [Node]
        
        init?(_ node: Node) {
            guard case let .group(nodes) = node
            else { return nil }
            self.init(nodes: nodes)
        }
        
        init(_ nodes: [Node]) {
            self.init(nodes: nodes)
        }
        
        init(nodes: [Node] = []) {
            self.nodes = nodes
        }
        
        public func with(nodes: [Node]) -> Self {
            .init(nodes: nodes)
        }
        
        public func wrap() -> Node { .group(nodes) }
    }
    
}
