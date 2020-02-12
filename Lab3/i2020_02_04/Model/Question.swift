//
//  Question.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import Foundation

public struct Question {
    
    public var statement: String?
    public var isTrue: Bool?
    public var hint: String?
    
    public init(statement: String, isTrue: Bool, hint: String) {
        self.statement = statement
        self.isTrue = isTrue
        self.hint = hint
    }
    
}
