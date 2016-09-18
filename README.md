![Format - a Swift Formatter Kit](https://cloud.githubusercontent.com/assets/889949/11407879/e18e5834-93b5-11e5-9d53-31a25d0d97df.png)

[![Build Status](https://travis-ci.org/marmelroy/Format.svg?branch=master)](https://travis-ci.org/marmelroy/Format) [![Version](http://img.shields.io/cocoapods/v/Format.svg)](http://cocoapods.org/?q=Format)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# Format
A Swift formatter kit. Simple formatting syntax for decimal numbers, currency, mass, addresses, ordinal numbers and hexadecimal colors.

## Usage

Import Format at the top of the Swift file with the content you would like to format.

```swift
import Format
```

## Number Formatting

Format provides a formatting extension for all number types. To format an Int to two decimal places:
```swift
let formattedNumber = 45.format(Decimals.two) // 45.00
```

Format defaults to the user's current locale but a custom locale can be easily provided:
```swift
let frLocale = Locale(identifier: "FR")
let gbLocale = Locale(identifier: "GB")
let formattedFRNumber = 99.format(Currency.EUR, locale: frLocale) // 99,00 €
let formattedGBNumber = 99.format(Currency.GBP, locale: gbLocale) // £ 99.00
```

Apply any of these formatters to any number type:
```swift
Decimals.three // 10.123
Currency.USD // $10.12
General.ordinal // 10th (iOS9+ only)
General.spellOut // ten point one two three
General.distance // 30 feet
Mass.person // 67 kg
```

The distance formatter assumes the number represents the distance in meters before converting and formatting it to the current locale's preferred unit.

## Address Formatting (iOS9.0+ only)

Different cultures have [different ways of displaying addresses](https://en.wikipedia.org/wiki/Address_(geography)#Address_format). Format includes an extension on CLPlacemark that converts the addressDictionary to a formatted string in the current locale:

```swift
let address = placemark.format()
```
Please note that this function will produce a deprecated warning when used. This is because Apple is using AddressBook keys in the CLPlacemark and AddressBook was deprecated.

To format a custom address (all fields are optional strings):

```swift
let address = AddressFormatter().format(street, city: city, state: state, postalCode: postalCode, country: country, ISOCountryCode: ISOCountryCode)
```

## Color Formatting

Format can help you convert hexadecimal colors from the web to UIColors you can work with:

```swift
let color = ColorFormatter().format("2ba134")
```

In case of an error, the color will default to black if the string is empty or white if the string is invalid.

### Setting up with Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Format into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "marmelroy/Format"
```

### Setting up with [CocoaPods](http://cocoapods.org/?q=PhoneNumberKit)
```ruby
source 'https://github.com/CocoaPods/Specs.git'
pod 'Format', '~> 0.5'
```
