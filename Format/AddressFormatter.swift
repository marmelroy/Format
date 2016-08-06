//
//  AddressFormatter.swift
//  Format
//
//  Created by Roy Marmelstein on 16/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation
import Contacts

/// Address formatter class.
@available(iOS 9.0, *)
public class AddressFormatter {

    let postalFormatter = CNPostalAddressFormatter()

    /**
     Init
     
     - returns: initialises the formatter
     */
    public init() {}

    /**
     Format address.
     
     - parameter street:         the street as a string
     - parameter city:           the city as a string
     - parameter state:          the state as a string
     - parameter postalCode:     the postal code as a string
     - parameter country:        the country name as a string
     - parameter ISOCountryCode: the country's ISO code.
     
     - returns: Formatted address string using Contacts framework.
     */
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
        return postalFormatter.stringFromPostalAddress(postalAddress)
    }

}