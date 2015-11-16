//
//  Decimals.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

public enum Decimals: NumberFormatter {
    case None
    case One
    case Two
    case Three
    case Four
    case Five
    
    public var modifier: String {
        switch self {
        case None:
            return ".0"
        case One:
            return ".1"
        case Two:
            return ".2"
        case Three:
            return ".3"
        case Four:
            return ".4"
        case Five:
            return ".5"
        }
    }
    
    public var type: NumberFormatterType {
        return NumberFormatterType.Decimal
    }
}