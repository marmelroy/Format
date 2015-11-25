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
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension Double {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension Float {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}


public extension Int {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension Int16 {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = NSNumber(short: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension Int32 {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = NSNumber(int: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension Int64 {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = NSNumber(longLong: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension UInt {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = self as NSNumber
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension UInt16 {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = NSNumber(unsignedShort: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension UInt32 {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = NSNumber(unsignedInt: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}

public extension UInt64 {
    /**
     Format to string using current locale.
     
     - parameter formatter: selected formatter.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter) -> String {
        let formattedNumber = self.format(formatter, locale: NSLocale.currentLocale())
        return formattedNumber
    }
    
    /**
     Format to string using custom locale.
     
     - parameter formatter: selected formatter.
     - parameter locale:    custom locale.
     
     - returns: formatted string.
     */
    public func format(formatter: NumberFormatter, locale: NSLocale) -> String {
        let number = NSNumber(unsignedLongLong: self)
        let formattedNumber = NumberFormat.sharedInstance.format(number, formatter: formatter, locale: locale)
        return formattedNumber
    }
}
