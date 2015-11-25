[![Build Status](https://travis-ci.org/marmelroy/Format.svg?branch=master)](https://travis-ci.org/marmelroy/Format) [![Version](http://img.shields.io/cocoapods/v/Format.svg)](http://cocoapods.org/?q=Format)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# Format
Swift formatter kit. Simple formatting syntax for decimal numbers, currency, addresses, ordinal numbers and hexadecimal colors.

## Usage

Import Format at the top of the Swift file with the content you would like to format.

```swift
import Format
```

## Number Formatting

Format provides extensions for all number types. To format an Int to two decimal places:
```swift
let number = 45
let formattedNumber = number.format(Decimals.Two) // 45.00
```

Examples of the number formatters:
```swift
Decimals.Three // 10.123
Currency.USD // $10.12
General.Ordinal // 10th
General.SpellOut // ten point one two three
General.Distance // 30 feet
```

Please note that the distance formatter assumes the number represents the distance in meters before formatting it to the current locale's preferred unit.

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
pod 'Format', '~> 0.1'
```
