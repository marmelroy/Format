//
//  AddressExtensions.swift
//  Format
//
//  Created by Roy Marmelstein on 15/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation
import CoreLocation
import Contacts
import AddressBook

public extension CLPlacemark {
    public func format() -> String {
        let postalAddress = CNMutablePostalAddress()
        let addressDict = self.addressDictionary!
        if let street = addressDict[kABPersonAddressStreetKey] as? String {
            postalAddress.street = street
        }
        if let city = addressDict[kABPersonAddressCityKey] as? String {
            postalAddress.city = city
        }
        if let state = addressDict[kABPersonAddressStateKey] as? String {
            postalAddress.state = state
        }
        if let postalCode = addressDict[kABPersonAddressZIPKey] as? String {
            postalAddress.postalCode = postalCode
        }
        if let country = addressDict[kABPersonAddressCountryKey] as? String {
            postalAddress.country = country
        }
        if let ISOcountryCode = addressDict[kABPersonAddressCountryCodeKey] as? String {
            postalAddress.ISOCountryCode = ISOcountryCode
        }
        print(postalAddress)
        return "Boom"
    }
}