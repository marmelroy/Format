//
//  Separator.swift
//  Format
//
//  Created by Felipe Lefèvre Marino on 9/4/18.
//  Copyright © 2018 Roy Marmelstein. All rights reserved.
//

import Foundation

/**
 *  Separator formatting enum
 */
public enum Separator: NumberFormatter, NumberFormatterCustomLocaleAvailable {
    
    /// Comma separator with given spacing
    case comma(spacing: Int)
    /// Dot separator with given spacing
    case dot(spacing: Int)
    /// white space separator with given spacing
    case space(spacing: Int)
    /// semicolon separator with given spacing
    case semicolon(spacing: Int)
    /// custom separator with given spacing
    case custom(separator: String, spacing: Int)
    
    /// Modifier
    public var modifier: String {
        switch self {
        case .comma:
            return ","
        case .dot:
            return "."
        case .space:
            return " "
        case .semicolon:
            return ";"
        case .custom(let separator, _):
            return separator
        }
    }
    
    /// Type enum
    public var type: NumberFormatterType {
        return .separator
    }
    
    /// NSNumberFormatter style
    public var style: Foundation.NumberFormatter.Style? {
        return .none
    }
}
