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
}

/**
 *  Number formatter protocol. Consists of a string modifier and a type enum.
 */
public protocol NumberFormatter {
    var modifier: String { get }
    var type: NumberFormatterType { get }
}

/// Number format class
public class NumberFormat {
    
    static let sharedInstance = NumberFormat()
    
    let nsFormatter = NSNumberFormatter()
    
    let distanceFormatter = MKDistanceFormatter()

    /**
     Number formatting function
     
     - parameter number:    number to format as an NSNumber.
     - parameter formatter: the formatter to be applied, conforms to NumberFormatter protocol.
     
     - returns: formatted string.
     */
    public func format(number: NSNumber, formatter: NumberFormatter, locale: NSLocale) -> String{
        nsFormatter.locale = locale
        distanceFormatter.locale = locale
        var formattedString: String = ""
        if (formatter.type == .Decimal){
            nsFormatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
            if let modifierAsInt = Int(formatter.modifier) {
                nsFormatter.maximumFractionDigits = modifierAsInt
                nsFormatter.minimumFractionDigits = modifierAsInt
            }
            formattedString = nsFormatter.stringFromNumber(number)!
        }
        if (formatter.type == .Currency){
            nsFormatter.currencyCode = formatter.modifier
            nsFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            formattedString = nsFormatter.stringFromNumber(number)!
        }
        if (formatter.type == .General){
            if formatter.modifier == NumberFormatterOrdinalKey {
                nsFormatter.numberStyle = NSNumberFormatterStyle.OrdinalStyle
                formattedString = nsFormatter.stringFromNumber(number)!
            }
            else if formatter.modifier == NumberFormatterSpellOutKey {
                nsFormatter.numberStyle = NSNumberFormatterStyle.SpellOutStyle
                formattedString = nsFormatter.stringFromNumber(number)!
            }
            else if formatter.modifier == NumberFormatterDistanceKey {
                let distance = number as CLLocationDistance
                formattedString = distanceFormatter.stringFromDistance(distance)
            }
        }
        return formattedString
    }
}

