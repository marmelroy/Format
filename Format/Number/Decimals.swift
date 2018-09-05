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
    case none = 0
    /// 1 decimal numbers.
    case one = 1
    /// 2 decimal numbers.
    case two = 2
    /// 3 decimal numbers.
    case three = 3
    /// 4 decimal numbers.
    case four = 4
    /// 5 decimal numbers.
    case five = 5
    /// 6 decimal numbers.
    case six = 6
    /// 7 decimal numbers.
    case seven = 7
    /// 8 decimal numbers.
    case eight = 8
    /// 9 decimal numbers.
    case nine = 9

    /// Modifier
    public var modifier: String {
        return String(rawValue)
    }
    
    /// Type enum
    public var type: NumberFormatterType {
        return .decimal
    }
    
    /// NSNumberFormatter style
    public var style: Foundation.NumberFormatter.Style? {
        return .decimal
    }
    
}
