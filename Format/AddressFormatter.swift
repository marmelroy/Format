//
//  AddressFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 16/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation
import Contacts

public class AddressFormatter {

    public func format(street: String?, city: String?, state: String?, postalCode: String?, country: String?, ISOCountryCode: String?) -> String{
        let postalAddress = CNMutablePostalAddress()
        if let streetString = street {
            postalAddress.street = streetString
        }
        if let cityString = city {
            postalAddress.city = cityString
        }
        if let stateString = state {
            postalAddress.state = stateString
        }
        if let postalCodeString = postalCode {
            postalAddress.postalCode = postalCodeString
        }
        if let countryString = country {
            postalAddress.country = countryString
        }
        if let ISOCountryCodeString = ISOCountryCode {
            postalAddress.ISOCountryCode = ISOCountryCodeString
        }
        let postalFormatter = CNPostalAddressFormatter()
        return postalFormatter.stringFromPostalAddress(postalAddress)
    }

}