//
//  General.swift
//  Format
//
//  Created by Roy Marmelstein on 15/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

public enum General: NumberFormatter {
    case Ordinal
    case SpellOut
    case Distance

    public var modifier: String {
        switch self {
        case Ordinal:
            return NumberFormatterOrdinalKey
        case SpellOut:
            return NumberFormatterSpellOutKey
        case Distance:
            return NumberFormatterSpellOutKey
        }
    }

    public var type: NumberFormatterType {
        return NumberFormatterType.General
    }
}