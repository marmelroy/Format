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
    case Currency
    case Decimal
    case General
    case Mass
}

/**
 *  Number formatter protocol. Consists of a string modifier and a type enum.
 */
public protocol NumberFormatter {
    var modifier: String { get }
    var type: NumberFormatterType { get }
    var style: NSNumberFormatterStyle? { get }
}

public protocol NumberFormatterCustomLocaleAvailable: NumberFormatter {}

/// Number format class
public class NumberFormat {
    
    static let sharedInstance = NumberFormat()
    
    var nsFormatter = NSNumberFormatter()
    
    let distanceFormatter = MKDistanceFormatter()
    
    let massFormatter = NSMassFormatter()

    public func format(number: NSNumber, formatter: NumberFormatter) -> String{
        if let customLocaleFormatter = formatter as? NumberFormatterCustomLocaleAvailable {
            return format(number, formatter: customLocaleFormatter, locale: NSLocale.currentLocale())
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
    public func format(number: NSNumber, formatter: NumberFormatterCustomLocaleAvailable, locale: NSLocale) -> String{
        if let style = formatter.style where nsFormatter.numberStyle != style {
            nsFormatter = NSNumberFormatter()
            nsFormatter.numberStyle = style
        }
        nsFormatter.locale = locale
        distanceFormatter.locale = locale

        var formattedString: String?
        if (formatter.type == .Decimal) {
            if let modifierAsInt = Int(formatter.modifier) {
                nsFormatter.maximumFractionDigits = modifierAsInt
                nsFormatter.minimumFractionDigits = modifierAsInt
            }
            formattedString = nsFormatter.stringFromNumber(number)
        }
        if (formatter.type == .Currency) {
            nsFormatter.currencyCode = formatter.modifier
            nsFormatter.currencySymbol = (nsFormatter.currencyCode == Currency.BTC.modifier) ? "Ƀ" : nil
            formattedString = nsFormatter.stringFromNumber(number)
        }
        if (formatter.type == .General) {
            if formatter.modifier == NumberFormatterOrdinalKey {
                formattedString = nsFormatter.stringFromNumber(floor(number.doubleValue))
            } else if formatter.modifier == NumberFormatterSpellOutKey {
                formattedString = nsFormatter.stringFromNumber(number)
            } else if formatter.modifier == NumberFormatterDistanceKey {
                let distance = number as CLLocationDistance
                formattedString = distanceFormatter.stringFromDistance(distance)
            }
        }
        guard let finalString = formattedString else {
            return ""
        }
        return finalString
    }
    
    internal func defaultLocaleOnlyFormat(number: NSNumber, formatter: NumberFormatter) -> String {
        var formattedString: String?
        if (formatter.type == .Mass) {
            massFormatter.forPersonMassUse = (formatter.modifier == MassFormatterPersonKey)
            formattedString = massFormatter.stringFromKilograms(number.doubleValue)
        }
        guard let finalString = formattedString else {
        return ""
        }
        return finalString
    }

}

