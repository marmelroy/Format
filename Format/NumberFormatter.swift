//
//  NumberFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

public enum NumberFormatterType {
    case Currency
    case Decimal
    case General
}

public protocol NumberFormatter {
    var modifier: String { get }
    var type: NumberFormatterType { get }
}

func formatNumber(number: NSNumber, formatter: NumberFormatter) -> String{
    var formattedString: String = ""
    let numberFormatter = NSNumberFormatter()
    if (formatter.type == .Decimal){
        formattedString = NSString(format: "%\(formatter.modifier)f", CGFloat(number)) as String
    }
    if (formatter.type == .Currency){
        numberFormatter.currencyCode = formatter.modifier
        numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formattedString = numberFormatter.stringFromNumber(number)!
    }
    if (formatter.type == .General){
        if formatter.modifier == NumberFormatterOrdinalKey {
            numberFormatter.numberStyle = NSNumberFormatterStyle.OrdinalStyle
        }
        else if formatter.modifier == NumberFormatterSpellOutKey {
            numberFormatter.numberStyle = NSNumberFormatterStyle.SpellOutStyle
        }
        formattedString = numberFormatter.stringFromNumber(number)!
    }
    return formattedString
}