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
public enum Decimals: Int, NumberFormatter, NumberFormatterCustomLocaleAvailable {
    /// No decimal numbers.
    case None = 0
    /// 1 decimal numbers.
    case One = 1
    /// 2 decimal numbers.
    case Two = 2
    /// 3 decimal numbers.
    case Three = 3
    /// 4 decimal numbers.
    case Four = 4
    /// 5 decimal numbers.
    case Five = 5
    /// 6 decimal numbers.
    case Six = 6
    /// 7 decimal numbers.
    case Seven = 7
    /// 8 decimal numbers.
    case Eight = 8
    /// 9 decimal numbers.
    case Nine = 9

    /// Modifier
    public var modifier: String {
        return String(rawValue)
    }
    
    /// Type enum
    public var type: NumberFormatterType {
        return .Decimal
    }
    
    /// NSNumberFormatter style
    public var style: NSNumberFormatterStyle? {
        return .DecimalStyle
    }
    
}