//
//  BoolExtension.swift
//  lettresender
//
//  Created by Amine Bensalah on 04/12/2016.
//  Copyright © 2016 Amine Bensalah. All rights reserved.
//

import Foundation

extension Bool {
    public var toString: String {
        (self == true) ? "true" : "false"
    }

    public func toogle() -> Bool {
        !self
    }
}
