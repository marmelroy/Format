//
//  ColorFormatterTests.swift
//  Format
//
//  Created by Roy Marmelstein on 25/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import XCTest
@testable import Format

class ColorFormatterTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testColorRed() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "ff0000"
        let redColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(redColor.cgColor)
        let normalizedRedComponent = Int(components[0]*255)
        XCTAssertEqual(normalizedRedComponent, 255)
    }
    
    func testColorGreen() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "00ff00"
        let greenColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(greenColor.cgColor)
        let normalizedGreenComponent = Int(components[1]*255)
        XCTAssertEqual(normalizedGreenComponent, 255)
    }

    func testColorBlue() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "0000ff"
        let blueColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(blueColor.cgColor)
        let normalizedBlueComponent = Int(components[2]*255)
        XCTAssertEqual(normalizedBlueComponent, 255)
    }
    
    func testColorBlack() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "000000"
        let blackColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(blackColor.cgColor)
        let normalizedBlueComponent = Int(components[2]*255)
        XCTAssertEqual(normalizedBlueComponent, 0)
    }
    
    func testColorWhite() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "ffffff"
        let whiteColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(whiteColor.cgColor)
        let normalizedBlueComponent = Int(components[2]*255)
        XCTAssertEqual(normalizedBlueComponent, 255)
    }

    func testColorRandom() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = "2ba134"
        let randomColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(randomColor.cgColor)
        let normalizedBlueComponent = Int(components[2]*255)
        XCTAssertEqual(normalizedBlueComponent, 52)
    }
    
    func testColorInvalidEmpty() {
        let colorFormatter = ColorFormatter()
        let colorToFormat = ""
        let randomColor = colorFormatter.format(colorToFormat)
        let components = CGColorGetComponents(randomColor.cgColor)
        let normalizedBlueComponent = Int(components[2]*255)
        XCTAssertEqual(normalizedBlueComponent, 0)
    }
    

}
