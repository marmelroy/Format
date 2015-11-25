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
    @available(iOS, deprecated=9.0)
    public func format() -> String {
        // Uses deprecated Address book keys since there's no interoperability between CLPlacemark and ContactsKit yet.
        guard let addressDictionary = self.addressDictionary else {
            return ""
        }
        var formattedString: String = ""
        let street = addressDictionary[kABPersonAddressStreetKey] as? String
        let city = addressDictionary[kABPersonAddressCityKey] as? String
        let state = addressDictionary[kABPersonAddressStateKey] as? String
        let postalCode = addressDictionary[kABPersonAddressZIPKey] as? String
        let country = addressDictionary[kABPersonAddressCountryKey] as? String
        let ISOCountryCode = addressDictionary[kABPersonAddressCountryCodeKey] as? String
        
        formattedString = AddressFormatter().format(street, city: city, state: state, postalCode: postalCode, country: country, ISOCountryCode: ISOCountryCode)
        return formattedString
    }
}