//
//  Mass.swift
//  Format
//
//  Created by Roy Marmelstein on 01/02/2016.
//  Copyright © 2016 Roy Marmelstein. All rights reserved.
//

import Foundation

/**
 *  Mass formatter.
 */
public enum Mass: NumberFormatter {
    case Generic // Mass of a generic object in kg. Display in current locale.
    case Person // Mass of a person in kg. Display in current locale.
    
    /// Modifier
    public var modifier: String {
        switch self {
        case Generic:
            return MassFormatterGenericKey
        case Person:
            return MassFormatterPersonKey
        }
    }
    
    /// Type enum
    public var type: NumberFormatterType {
        return .Mass
    }
    
    /// NSNumberFormatter style
    public var style: NSNumberFormatterStyle? {
        return .NoStyle
    }
}