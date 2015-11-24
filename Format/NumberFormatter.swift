//
//  NumberFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation
import MapKit

public enum NumberFormatterType {
    case Currency
    case Decimal
    case Distance
    case General
}

public protocol NumberFormatter {
    var modifier: String { get }
    var type: NumberFormatterType { get }
}

public class NumberFormat {
    
    static let sharedInstance = NumberFormat()
    
    let nsFormatter = NSNumberFormatter()
    
    let distanceFormatter = MKDistanceFormatter()

    public func format(number: NSNumber, formatter: NumberFormatter) -> String{
        var formattedString: String = ""
        if (formatter.type == .Decimal){
            formattedString = NSString(format: "%\(formatter.modifier)f", CGFloat(number)) as String
        }
        if (formatter.type == .Currency){
            nsFormatter.currencyCode = formatter.modifier
            nsFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            formattedString = nsFormatter.stringFromNumber(number)!
        }
        if (formatter.type == .General){
            if formatter.modifier == NumberFormatterOrdinalKey {
                nsFormatter.numberStyle = NSNumberFormatterStyle.OrdinalStyle
            }
            else if formatter.modifier == NumberFormatterSpellOutKey {
                nsFormatter.numberStyle = NSNumberFormatterStyle.SpellOutStyle
            }
            formattedString = nsFormatter.stringFromNumber(number)!
        }
        if (formatter.type == .Distance){
            let distance = number as CLLocationDistance
            formattedString = distanceFormatter.stringFromDistance(distance)
        }
        return formattedString
    }
}

