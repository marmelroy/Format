//
//  NumberExtensions.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

// MARK: - Number type formatting extensions

public extension CGFloat {
    /**
     Format CGFloat
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Double {
    /**
     Format Double
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Float {
    /**
     Format Float
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}


public extension Int {
    /**
     Format Int
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Int16 {
    /**
     Format Int16
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(short: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Int32 {
    /**
     Format Int32
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(int: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Int64 {
    /**
     Format Int64
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(longLong: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt {
    /**
     Format UInt
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt16 {
    /**
     Format UInt16
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(unsignedShort: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt32 {
    /**
     Format UInt32
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(unsignedInt: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt64 {
    /**
     Format UInt64
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(unsignedLongLong: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter)
        return formattedNumber
    }
}
