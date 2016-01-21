//
//  ColorFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 17/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

/// Color formatter
public class ColorFormatter {
    /**
     Init
     
     - returns: initialises the formatter
     */
    public init() {}
    
    /**
     Formats a hex color string to UIColor. If empty, Black. If invalid, White.
     
     - parameter hex: web format hex color without the #
     
     - returns: UIColor
     */
    public func format(hex: String) -> UIColor {
        let scanner = NSScanner(string: hex)
        scanner.charactersToBeSkipped = NSCharacterSet.alphanumericCharacterSet().invertedSet
        
        var value: UInt32 = 0;
        scanner.scanHexInt(&value)
        
        let red = CGFloat(Float(Int(value >> 16) & 0x000000FF) / 255.0)
        let green = CGFloat(Float(Int(value >> 8) & 0x000000FF) / 255.0)
        let blue = CGFloat(Float(Int(value) & 0x000000FF) / 255.0)

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)        
    }
}