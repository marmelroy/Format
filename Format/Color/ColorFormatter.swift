//
//  ColorFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 17/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

/// Color formatter
open class ColorFormatter {
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
    open func format(_ hex: String) -> UIColor {
        let scanner = Scanner(string: hex)
        scanner.charactersToBeSkipped = CharacterSet.alphanumerics.inverted
        
        var value: UInt32 = 0;
        scanner.scanHexInt32(&value)
        
        let red = CGFloat(Float(Int(value >> 16) & 0x000000FF) / 255.0)
        let green = CGFloat(Float(Int(value >> 8) & 0x000000FF) / 255.0)
        let blue = CGFloat(Float(Int(value) & 0x000000FF) / 255.0)

        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)        
    }
}
