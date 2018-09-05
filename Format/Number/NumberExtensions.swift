//
//  NumberExtensions.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

// MARK: - NumberFormatProvider

/**
 Conforming types can be transformed with Format
 */
public protocol NumberFormatProvider {
    
    /**
     Returns the `NSNumber` version of the current number.
     
     - returns: An `NSNumber` which reflects the current number.
     */
    func formatNumber() -> NSNumber
    
    /**
     Returns the transformation of the current number as a `String` based on the current locale.
     
     - parameter formatter: A `NumberFormat` which will be used to transform the number.
     
     - returns: A string which corresponds to the transformed value of the number according to the 
     `NumberFormat` provided.
     */
    func format(_ formatter: NumberFormatter) -> String
    
    /**
     Returns the transformation of the current number as a `String` based on the provided locale.
     
     - parameter formatter: A `NumberFormat` which will be used to transform the number.
     - parameter locale:    The `Locale` which will be used to transform the number.
     
     - returns: A string which corresponds to the transformed value of the number according to the
     `NumberFormat` provided.
     */
    func format(_ formatter: NumberFormatterCustomLocaleAvailable, locale: Locale) -> String
}

/**
 Default implementation of `NumberFormatProvider`
 */
extension NumberFormatProvider {
    
    public func format(_ formatter: NumberFormatter) -> String {
        let formattedNumber = NumberFormat.sharedInstance.format(formatNumber(), formatter: formatter)
        return formattedNumber
    }

    public func format(_ formatter: NumberFormatterCustomLocaleAvailable, locale: Locale) -> String {
        let formattedNumber = NumberFormat.sharedInstance.format(formatNumber(), formatter: formatter, locale: locale)
        return formattedNumber
    }
}

// MARK: - Number Extensions

/**
 `CGFloat` conforming to `NumberFormatProvider`
 */
extension CGFloat: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return self as NSNumber
    }
}

/**
 `Bool` conforming to `NumberFormatProvider`
 */

extension Bool: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Bool)
    }
}

/**
 `Double` conforming to `NumberFormatProvider`
 */

extension Double: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Double)
    }
}

/**
 `Float` conforming to `NumberFormatProvider`
 */

extension Float: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Float)
    }
}

/**
 `Int` conforming to `NumberFormatProvider`
 */

extension Int: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Int)
    }
}

/**
 `Int16` conforming to `NumberFormatProvider`
 */

extension Int16: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Int16)
    }
}

/**
 `Int32` conforming to `NumberFormatProvider`
 */

extension Int32: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Int32)
    }
}

/**
 `Int64` conforming to `NumberFormatProvider`
 */

extension Int64: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as Int64)
    }
}

/**
 `UInt` conforming to `NumberFormatProvider`
 */

extension UInt: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as UInt)
    }
}

/**
 `UInt16` conforming to `NumberFormatProvider`
 */

extension UInt16: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as UInt16)
    }
}

/**
 `UInt32` conforming to `NumberFormatProvider`
 */

extension UInt32: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as UInt32)
    }
}

/**
 `UInt64` conforming to `NumberFormatProvider`
 */

extension UInt64: NumberFormatProvider {
    public func formatNumber() -> NSNumber {
        return NSNumber(value: self as UInt64)
    }
}
