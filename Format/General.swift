//
//  General.swift
//  Format
//
//  Created by Roy Marmelstein on 15/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

/**
 *  General formatter.
 */
public enum General: NumberFormatter, NumberFormatterCustomLocaleAvailable {
    case ordinal // Ordinal number in the current locale (e.g. 18eme)
    case spellOut // Spells out the number in the current locale (e.g. Forty Two).
    case distance // Takes the source number as distance in meters. Display in current locale.

    /// Modifier
    public var modifier: String {
        switch self {
        case .ordinal:
            return NumberFormatterOrdinalKey
        case .spellOut:
            return NumberFormatterSpellOutKey
        case .distance:
            return NumberFormatterDistanceKey
        }
    }

    /// Type enum
    public var type: NumberFormatterType {
        return .general
    }
    
    /// NSNumberFormatter style
    public var style: Foundation.NumberFormatter.Style? {
        switch self {
        case .ordinal:
            if #available(iOS 9.0, *) {
                return .ordinal
            } else {
                assertionFailure("Ordinal Style is only available from iOS9")
                return nil;
            }
        case .spellOut:
            return .spellOut
        case .distance:
            return nil
        }
    }
}
