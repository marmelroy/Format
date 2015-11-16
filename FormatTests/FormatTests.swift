//
//  FormatTests.swift
//  FormatTests
//
//  Created by Roy Marmelstein on 13/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import XCTest
import CoreLocation
@testable import Format

class FormatTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        print(45.format(General.SpellOut))
    }
    
    func testAddress() {
        let longitude = -2.387795
        let latitude = 48.861059
        
        let location = CLLocation(latitude: latitude, longitude: longitude)
        let expectation = self.expectationWithDescription("REVERSE GEOCODED")
        CLGeocoder().reverseGeocodeLocation(location, completionHandler: {(placemarks, error) -> Void in
            print(location)
            if error != nil {
                print("Reverse geocoder failed with error" + error!.localizedDescription)
                return
            }
            
            if placemarks!.count > 0 {
                let pm = placemarks![0] 
                print(pm.format())
                expectation.fulfill()
            }
            else {
                print("Problem with the data received from geocoder")
            }
        })
        self.waitForExpectationsWithTimeout(10.0, handler: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
