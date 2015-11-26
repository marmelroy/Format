//
//  Decimals.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

/**
 *  Decimals formatting enum
 */
public enum Decimals: NumberFormatter {
    /// No decimal numbers.
    case None
    /// 1 decimal numbers.
    case One
    /// 2 decimal numbers.
    case Two
    /// 3 decimal numbers.
    case Three
    /// 4 decimal numbers.
    case Four
    /// 5 decimal numbers.
    case Five
    /// 6 decimal numbers.
    case Six
    /// 7 decimal numbers.
    case Seven
    /// 8 decimal numbers.
    case Eight
    /// 9 decimal numbers.
    case Nine

    /// Modifier
    public var modifier: String {
        switch self {
        case None:
            return "0"
        case One:
            return "1"
        case Two:
            return "2"
        case Three:
            return "3"
        case Four:
            return "4"
        case Five:
            return "5"
        case Six:
            return "6"
        case Seven:
            return "7"
        case Eight:
            return "8"
        case Nine:
            return "9"
        }
    }
    
    /// Type enum
    public var type: NumberFormatterType {
        return NumberFormatterType.Decimal
    }
    
    /// NSNumberFormatter style
    public var style: NSNumberFormatterStyle? {
        return NSNumberFormatterStyle.DecimalStyle
    }
    
}