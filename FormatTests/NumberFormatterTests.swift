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
        let formattedNumber = number.format(Decimals.none)
        XCTAssertEqual(formattedNumber, "45")
    }

    func testDecimalFormattingOne() {
        let number = 45
        let formattedNumber = number.format(Decimals.one)
        XCTAssertEqual(formattedNumber, "45.0")
    }
    
    func testDecimalFormattingTwo() {
        let number = 45.9
        let formattedNumber = number.format(Decimals.two)
        XCTAssertEqual(formattedNumber, "45.90")
    }

    func testDecimalFormattingFour() {
        let number = M_PI
        let formattedNumber = number.format(Decimals.four)
        XCTAssertEqual(formattedNumber, "3.1416")
    }
    
    func testDecimalFormattingEuropean() {
        let number = M_PI
        let frenchLocale = Locale(identifier: "FR")
        let formattedNumber = number.format(Decimals.two, locale: frenchLocale)
        XCTAssertEqual(formattedNumber, "3,14")
    }
    
    /**
    Currency
    */

    func testCurrencyFormattingDouble() {
        let number = 45.232313
        let frenchLocale = Locale(identifier: "FR")
        let formattedNumberEUR = number.format(Currency.EUR, locale: frenchLocale)
        XCTAssertEqual(formattedNumberEUR, "45,23 €")
        let formattedNumberBTC = number.format(Currency.BTC, locale: frenchLocale)
        XCTAssertEqual(formattedNumberBTC, "45,23 Ƀ")
        let formattedNumberGBP = number.format(Currency.GBP)
        XCTAssertEqual(formattedNumberGBP, "£45.23")
        let formattedNumberUSD = number.format(Currency.USD)
        XCTAssertEqual(formattedNumberUSD, "$45.23")
    }
    
    func testCurrencyFormattingInt() {
        let number = 45
        let formattedNumberBTC = number.format(Currency.BTC)
        XCTAssertEqual(formattedNumberBTC, "Ƀ45.00")
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
        let formattedNumberOne = 1.format(General.ordinal)
        XCTAssertEqual(formattedNumberOne, "1st")
        let formattedNumberTwo = 2.format(General.ordinal)
        XCTAssertEqual(formattedNumberTwo, "2nd")
        let formattedNumberThree = 3.format(General.ordinal)
        XCTAssertEqual(formattedNumberThree, "3rd")
        let formattedNumberTwoHundred = 200.format(General.ordinal)
        XCTAssertEqual(formattedNumberTwoHundred, "200th")
    }
    
    func testOrdinalDouble() {
        let formattedNumberOne = 1.31231.format(General.ordinal)
        XCTAssertEqual(formattedNumberOne, "1st")
        let formattedNumberTwo = 2.34234.format(General.ordinal)
        XCTAssertEqual(formattedNumberTwo, "2nd")
        let formattedNumberThree = 3.23232.format(General.ordinal)
        XCTAssertEqual(formattedNumberThree, "3rd")
        let formattedNumberTwoHundred = 200.32121.format(General.ordinal)
        XCTAssertEqual(formattedNumberTwoHundred, "200th")
    }
    
    func testOrdinalRoundDown() {
        let formattedNumberOne = 3.3.format(General.ordinal)
        XCTAssertEqual(formattedNumberOne, "3rd")
        let formattedNumberThree = 3.999.format(General.ordinal)
        XCTAssertEqual(formattedNumberThree, "3rd")
        let formattedNumberTwoHundred = 4.00.format(General.ordinal)
        XCTAssertEqual(formattedNumberTwoHundred, "4th")
    }
    
    /**
    Spell out
    */

    func testSpellOutInt() {
        let formattedNumberOne = 1.format(General.spellOut)
        XCTAssertEqual(formattedNumberOne, "one")
        let formattedNumberTwo = 2.format(General.spellOut)
        XCTAssertEqual(formattedNumberTwo, "two")
        let formattedNumberThree = 3.format(General.spellOut)
        XCTAssertEqual(formattedNumberThree, "three")
        let frenchLocale = Locale(identifier: "FR")
        let formattedNumberTwoHundred = 200.format(General.spellOut, locale: frenchLocale)
        XCTAssertEqual(formattedNumberTwoHundred, "deux cents")
        let formattedNumberThreeThousand = 3214.format(General.spellOut)
        XCTAssertEqual(formattedNumberThreeThousand, "three thousand two hundred fourteen")
    }

    func testSpellOutDouble() {
        let formattedNumberOne = 1.31.format(General.spellOut)
        XCTAssertEqual(formattedNumberOne, "one point three one")
        let formattedNumberTwo = 2.342.format(General.spellOut)
        XCTAssertEqual(formattedNumberTwo, "two point three four two")
        let formattedNumberThree = 3.23.format(General.spellOut)
        XCTAssertEqual(formattedNumberThree, "three point two three")
        let formattedNumberTwoHundred = 200.00.format(General.spellOut)
        XCTAssertEqual(formattedNumberTwoHundred, "two hundred")
    }

    /**
    Distance
    */

    func testDistanceDouble() {
        let number = 45.232313 // meters
        let formattedNumber = number.format(General.distance)
        XCTAssertEqual(formattedNumber, "150 feet")
    }
    
    func testDistanceNegativeHigh() {
        let number = -212145.232313 // meters
        let formattedNumber = number.format(General.distance)
        XCTAssertEqual(formattedNumber, "-696,015 feet")
    }
    
    func testDistanceEUR() {
        let frenchLocale = Locale(identifier: "FR")
        let number = 500 // meters
        let formattedNumber = number.format(General.distance, locale: frenchLocale)
        XCTAssertEqual(formattedNumber, "500 m")
    }
    
    /**
     Mass
     */
    
    func testMassDoublePerson() {
        let number = 67 // kg
        let formattedNumber = number.format(Mass.person)
        XCTAssertEqual(formattedNumber, "147.71 lb")
    }
    
    func testMassDoublePersonGeneric() {
        let number = 67 // kg
        let formattedNumber = number.format(Mass.generic)
        XCTAssertEqual(formattedNumber, "147.71 lb")
    }


    func testMassDoubleZeroGeneric() {
        let number = 0.0 // kg
        let formattedNumber = number.format(Mass.generic)
        XCTAssertEqual(formattedNumber, "0 lb")
    }
    
    func testMassDoubleNegativeGeneric() {
        let number = -10.0 // kg
        let formattedNumber = number.format(Mass.generic)
        XCTAssertEqual(formattedNumber, "-22.046 lb")
    }


}
