//
//  AddressExtensions.swift
//  Format
//
//  Created by Roy Marmelstein on 15/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation
import CoreLocation
import AddressBook

public extension CLPlacemark {
    /**
     Formats a CLPlacemark to a string corresponding to the current locale's formatting rules. Uses deprectated AddressBook keys to read the address dictionary and current Contacts framework formatter for formatting.
     
     - returns: Formatted address string.
     */
    public func format() -> String {
        // Uses deprectaed Address book keys since there's no interoperability between CLPlacemark and ContactsKit yet.
        let addressDict = self.addressDictionary!
        var formattedString: String = ""
        let street = addressDict[kABPersonAddressStreetKey] as? String
        let city = addressDict[kABPersonAddressCityKey] as? String
        let state = addressDict[kABPersonAddressStateKey] as? String
        let postalCode = addressDict[kABPersonAddressZIPKey] as? String
        let country = addressDict[kABPersonAddressCountryKey] as? String
        let ISOCountryCode = addressDict[kABPersonAddressCountryCodeKey] as? String
        formattedString = AddressFormatter().format(street, city: city, state: state, postalCode: postalCode, country: country, ISOCountryCode: ISOCountryCode)
        return formattedString
    }
}