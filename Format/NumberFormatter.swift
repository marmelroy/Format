//
//  NumberFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation
import MapKit

/**
 Number formatter types
 
 - Currency: Currency formatter.
 - Decimal:  Number of decimal places formatter.
 - General: Type containing ordinal, spell out and distance formatters (meters to local).
 */
public enum NumberFormatterType {
    case currency
    case decimal
    case general
    case mass
}

/**
 *  Number formatter protocol. Consists of a string modifier and a type enum.
 */
public protocol NumberFormatter {
    var modifier: String { get }
    var type: NumberFormatterType { get }
    var style: Foundation.NumberFormatter.Style? { get }
}

public protocol NumberFormatterCustomLocaleAvailable: NumberFormatter {}

/// Number format class
open class NumberFormat {
    
    static let sharedInstance = NumberFormat()
    
    var nsFormatter = Foundation.NumberFormatter()
    
    let distanceFormatter = MKDistanceFormatter()
    
    let massFormatter = MassFormatter()

    open func format(_ number: NSNumber, formatter: NumberFormatter) -> String{
        if let customLocaleFormatter = formatter as? NumberFormatterCustomLocaleAvailable {
            return format(number, formatter: customLocaleFormatter, locale: Locale.current)
        }
        else {
            return defaultLocaleOnlyFormat(number, formatter: formatter)
        }
    }
    
    /**
     Number formatting function for formatters that accept custom locales. Inits the NSFormatter again if style changes.
     
     - parameter number:    number to format as an NSNumber.
     - parameter formatter: the formatter to be applied, conforms to NumberFormatter protocol.
     - parameter locale:    locale to use.
     
     - returns: formatted string.
     */
    open func format(_ number: NSNumber, formatter: NumberFormatterCustomLocaleAvailable, locale: Locale) -> String{
        if let style = formatter.style , nsFormatter.numberStyle != style {
            nsFormatter = Foundation.NumberFormatter()
            nsFormatter.numberStyle = style
        }
        nsFormatter.locale = locale
        distanceFormatter.locale = locale

        var formattedString: String?
        if (formatter.type == .decimal) {
            if let modifierAsInt = Int(formatter.modifier) {
                nsFormatter.maximumFractionDigits = modifierAsInt
                nsFormatter.minimumFractionDigits = modifierAsInt
            }
            formattedString = nsFormatter.string(from: number)
        }
        if (formatter.type == .currency) {
            nsFormatter.currencyCode = formatter.modifier
            nsFormatter.currencySymbol = (nsFormatter.currencyCode == Currency.BTC.modifier) ? "Ƀ" : nil
            formattedString = nsFormatter.string(from: number)
        }
        if (formatter.type == .general) {
            if formatter.modifier == NumberFormatterOrdinalKey {
                formattedString = nsFormatter.string(from: NSNumber(value:floor(number.doubleValue)))
            } else if formatter.modifier == NumberFormatterSpellOutKey {
                formattedString = nsFormatter.string(from: number)
            } else if formatter.modifier == NumberFormatterDistanceKey {
                let distance = number as! CLLocationDistance
                formattedString = distanceFormatter.string(fromDistance: distance)
            }
        }
        guard let finalString = formattedString else {
            return ""
        }
        return finalString
    }
    
    internal func defaultLocaleOnlyFormat(_ number: NSNumber, formatter: NumberFormatter) -> String {
        var formattedString: String?
        if (formatter.type == .mass) {
            massFormatter.isForPersonMassUse = (formatter.modifier == MassFormatterPersonKey)
            formattedString = massFormatter.string(fromKilograms: number.doubleValue)
        }
        guard let finalString = formattedString else {
        return ""
        }
        return finalString
    }

}

