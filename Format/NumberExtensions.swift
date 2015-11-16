//
//  NumberExtensions.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

public extension CGFloat {
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Double {
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Float {
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}


public extension Int {
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Int16 {
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(short: self)
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Int32 {
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(int: self)
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension Int64 {
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(longLong: self)
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt {
    public func format(formatter: NumberFormatter) -> String {
        let number = self as NSNumber
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt16 {
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(unsignedShort: self)
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt32 {
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(unsignedInt: self)
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}

public extension UInt64 {
    public func format(formatter: NumberFormatter) -> String {
        let number = NSNumber(unsignedLongLong: self)
        let formattedNumber = numberFormat(number, formatter: formatter)
        return formattedNumber
    }
}
