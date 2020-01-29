//
//  Set+Extension.swift
//  MarkupCore
//
//  Created by Maxim Krouk on 9/1/19.
//  Copyright © 2019 MakeupStudio. All rights reserved.
//

extension Set {
    
    public func inserting(_ element: Element) -> Self {
        var buffer = self
        buffer.insert(element)
        return buffer
    }
    
}
