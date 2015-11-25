//
//  NumberFormatterTests.swift
//  Format
//
//  Created by Roy Marmelstein on 25/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import XCTest
@testable import Format

class NumberFormatterTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /**
     Decimal formatter testing
     */

    func testDecimalFormattingNone() {
        let number = 45.232313
        let formattedNumber = number.format(Decimals.None)
        XCTAssertEqual(formattedNumber, "45")
    }

    func testDecimalFormattingOne() {
        let number = 45
        let formattedNumber = number.format(Decimals.One)
        XCTAssertEqual(formattedNumber, "45.0")
    }
    
    func testDecimalFormattingTwo() {
        let number = 45.9
        let formattedNumber = number.format(Decimals.Two)
        XCTAssertEqual(formattedNumber, "45.90")
    }

    func testDecimalFormattingFour() {
        let number = M_PI
        let formattedNumber = number.format(Decimals.Four)
        XCTAssertEqual(formattedNumber, "3.1416")
    }
    
    /**
    Currency
    */

    func testCurrencyFormattingDouble() {
        let number = 45.232313
        let formattedNumberEUR = number.format(Currency.EUR)
        XCTAssertEqual(formattedNumberEUR, "€45.23")
        let formattedNumberGBP = number.format(Currency.GBP)
        XCTAssertEqual(formattedNumberGBP, "£45.23")
        let formattedNumberUSD = number.format(Currency.USD)
        XCTAssertEqual(formattedNumberUSD, "$45.23")
    }
    
    func testCurrencyFormattingInt() {
        let number = 45
        let formattedNumberEUR = number.format(Currency.EUR)
        XCTAssertEqual(formattedNumberEUR, "€45.00")
        let formattedNumberGBP = number.format(Currency.GBP)
        XCTAssertEqual(formattedNumberGBP, "£45.00")
        let formattedNumberUSD = number.format(Currency.USD)
        XCTAssertEqual(formattedNumberUSD, "$45.00")
    }
    
    /**
    Ordinal
    */

    func testOrdinalInt() {
        let formattedNumberOne = 1.format(General.Ordinal)
        XCTAssertEqual(formattedNumberOne, "1st")
        let formattedNumberTwo = 2.format(General.Ordinal)
        XCTAssertEqual(formattedNumberTwo, "2nd")
        let formattedNumberThree = 3.format(General.Ordinal)
        XCTAssertEqual(formattedNumberThree, "3rd")
        let formattedNumberTwoHundred = 200.format(General.Ordinal)
        XCTAssertEqual(formattedNumberTwoHundred, "200th")
    }
    
    func testOrdinalDouble() {
        let formattedNumberOne = 1.31231.format(General.Ordinal)
        XCTAssertEqual(formattedNumberOne, "1st")
        let formattedNumberTwo = 2.34234.format(General.Ordinal)
        XCTAssertEqual(formattedNumberTwo, "2nd")
        let formattedNumberThree = 3.23232.format(General.Ordinal)
        XCTAssertEqual(formattedNumberThree, "3rd")
        let formattedNumberTwoHundred = 200.32121.format(General.Ordinal)
        XCTAssertEqual(formattedNumberTwoHundred, "200th")
    }
    
    /**
    Spell out
    */

    func testSpellOutInt() {
        let formattedNumberOne = 1.format(General.SpellOut)
        XCTAssertEqual(formattedNumberOne, "one")
        let formattedNumberTwo = 2.format(General.SpellOut)
        XCTAssertEqual(formattedNumberTwo, "two")
        let formattedNumberThree = 3.format(General.SpellOut)
        XCTAssertEqual(formattedNumberThree, "three")
        let formattedNumberTwoHundred = 200.format(General.SpellOut)
        XCTAssertEqual(formattedNumberTwoHundred, "two hundred")
        let formattedNumberThreeThousand = 3214.format(General.SpellOut)
        XCTAssertEqual(formattedNumberThreeThousand, "three thousand two hundred fourteen")
    }

    func testSpellOutDouble() {
        let formattedNumberOne = 1.31.format(General.SpellOut)
        XCTAssertEqual(formattedNumberOne, "one point three one")
        let formattedNumberTwo = 2.342.format(General.SpellOut)
        XCTAssertEqual(formattedNumberTwo, "two point three four two")
        let formattedNumberThree = 3.23.format(General.SpellOut)
        XCTAssertEqual(formattedNumberThree, "three point two three")
        let formattedNumberTwoHundred = 200.00.format(General.SpellOut)
        XCTAssertEqual(formattedNumberTwoHundred, "two hundred")
    }

    /**
    Distance
    */

    func testDistanceDouble() {
        let number = 45.232313 // meters
        let formattedNumber = number.format(General.Distance)
        XCTAssertEqual(formattedNumber, "150 feet")
    }
    
    func testDistanceNegativeHigh() {
        let number = -212145.232313 // meters
        let formattedNumber = number.format(General.Distance)
        XCTAssertEqual(formattedNumber, "-696,015 feet")
    }


}
