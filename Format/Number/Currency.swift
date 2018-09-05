//
//  Currency.swift
//  Format
//
//  Created by Roy Marmelstein on 15/11/2015.
//  Copyright © 2015 Roy Marmelstein. All rights reserved.
//

import Foundation

/**
 *  Currency formatter
 */
public enum Currency: String, NumberFormatter, NumberFormatterCustomLocaleAvailable {
    /// Andorran Peseta
    case ADP
    /// Arab Emirates Dirham
    case AED
    /// Afghanistan Afghani
    case AFN
    /// Albania Lek
    case ALL
    /// Armenia Dram
    case AMD
    /// Netherlands Antilles Guilder
    case ANG
    /// Angola Kwanza
    case AOA
    /// Argentine Peso
    case ARS
    /// Australia Dollar
    case AUD
    /// Aruba Guilder
    case AWG
    /// Azerbaijan New Manat
    case AZN
    /// Bosnia and Herzegovina dinar
    case BAD
    /// Bosnian Mark
    case BAM
    /// Bangladeshi Taka
    case BAN
    /// Barbados Dollar
    case BBD
    /// Bangladesh Taka
    case BDT
    /// Bulgarian Lev
    case BGN
    /// Bahrain Dinar
    case BHD
    /// Burundi Franc
    case BIF
    /// Bermuda Dollar
    case BMD
    /// Brunei Darussalam Dollar
    case BND
    /// Bolivia Boliviano
    case BOB
    /// Brazil Real
    case BRL
    /// Bahamas Dollar
    case BSD
    /// Bitcoin
    case BTC
    /// Bhutan Ngultrum
    case BTN
    /// Botswana Pula
    case BWP
    /// Belarus Ruble
    case BYR
    /// Belize Dollar
    case BZD
    /// Canada Dollar
    case CAD
    /// Congo/Kinshasa Franc
    case CDF
    /// Switzerland Franc
    case CHF
    /// Chile Peso
    case CLP
    /// China Yuan Renminbi
    case CNY
    /// Colombia Peso
    case COP
    /// Costa Rica Colon
    case CRC
    /// Cuba Convertible Peso
    case CUC
    /// Cuba Peso
    case CUP
    /// Cape Verde Escudo
    case CVE
    /// Czech Republic Koruna
    case CZK
    /// Djibouti Franc
    case DJF
    /// Denmark Krone
    case DKK
    /// Dominican Republic Peso
    case DOP
    /// Algeria Dinar
    case DZD
    /// Egypt Pound
    case EGP
    /// Eritrea Nakfa
    case ERN
    /// Ethiopia Birr
    case ETB
    /// Euro
    case EUR
    /// Fiji Dollar
    case FJD
    /// Falkland Islands (Malvinas) Pound
    case FKP
    /// United Kingdom Pound
    case GBP
    /// Georgia Lari
    case GEL
    /// Ghana Cedi
    case GHS
    /// Gibraltar Pound
    case GIP
    /// Gambia Dalasi
    case GMD
    /// Guinea Franc
    case GNF
    /// Guatemala Quetzal
    case GTQ
    /// Guyana Dollar
    case GYD
    /// Hong Kong Dollar
    case HKD
    /// Honduras Lempira
    case HNL
    /// Croatia Kuna
    case HRK
    /// Haiti Gourde
    case HTG
    /// Hungary Forint
    case HUF
    /// Indonesia Rupiah
    case IDR
    /// Israel Shekel
    case ILS
    /// India Rupee
    case INR
    /// Iraq Dinar
    case IQD
    /// Iran Rial
    case IRR
    /// Iceland Krona
    case ISK
    /// Jamaica Dollar
    case JMD
    /// Jordan Dinar
    case JOD
    /// Japan Yen
    case JPY
    /// Kenya Shilling
    case KES
    /// Kyrgyzstan Som
    case KGS
    /// Cambodia Riel
    case KHR
    /// Comoros Franc
    case KMF
    /// Korea (North) Won
    case KPW
    /// Korea (South) Won
    case KRW
    /// Kuwait Dinar
    case KWD
    /// Cayman Islands Dollar
    case KYD
    /// Kazakhstan Tenge
    case KZT
    /// Laos Kip
    case LAK
    /// Lebanon Pound
    case LBP
    /// Sri Lanka Rupee
    case LKR
    /// Liberia Dollar
    case LRD
    /// Lesotho Loti
    case LSL
    /// Libya Dinar
    case LYD
    /// Morocco Dirham
    case MAD
    /// Moldova Leu
    case MDL
    /// Madagascar Ariary
    case MGA
    /// Macedonia Denar
    case MKD
    /// Myanmar (Burma) Kyat
    case MMK
    /// Mongolia Tughrik
    case MNT
    /// Macau Pataca
    case MOP
    /// Mauritania Ouguiya
    case MRO
    /// Mauritius Rupee
    case MUR
    /// Maldives (Maldive Islands) Rufiyaa
    case MVR
    /// Malawi Kwacha
    case MWK
    /// Mexico Peso
    case MXN
    /// Malaysia Ringgit
    case MYR
    /// Mozambique Metical
    case MZN
    /// Namibia Dollar
    case NAD
    /// Nigeria Naira
    case NGN
    /// Nicaragua Cordoba
    case NIO
    /// Norway Krone
    case NOK
    /// Nepal Rupee
    case NPR
    /// New Zealand Dollar
    case NZD
    /// Oman Rial
    case OMR
    /// Panama Balboa
    case PAB
    /// Peru Nuevo Sol
    case PEN
    /// Papua New Guinea Kina
    case PGK
    /// Philippines Peso
    case PHP
    /// Pakistan Rupee
    case PKR
    /// Poland Zloty
    case PLN
    /// Paraguay Guarani
    case PYG
    /// Qatar Riyal
    case QAR
    /// Romania New Leu
    case RON
    /// Serbia Dinar
    case RSD
    /// Russia Ruble
    case RUB
    /// Rwanda Franc
    case RWF
    /// Saudi Arabia Riyal
    case SAR
    /// Solomon Islands Dollar
    case SBD
    /// Seychelles Rupee
    case SCR
    /// Sudan Pound
    case SDG
    /// Sweden Krona
    case SEK
    /// Singapore Dollar
    case SGD
    /// Saint Helena Pound
    case SHP
    /// Sierra Leone Leone
    case SLL
    /// Somalia Shilling
    case SOS
    /// Suriname Dollar
    case SRD
    /// São Tomé and Príncipe Dobra
    case STD
    /// El Salvador Colon
    case SVC
    /// Syria Pound
    case SYP
    /// Swaziland Lilangeni
    case SZL
    /// Thailand Baht
    case THB
    /// Tajikistan Somoni
    case TJS
    /// Turkmenistan Manat
    case TMT
    /// Tunisia Dinar
    case TND
    /// Tonga Pa'anga
    case TOP
    /// Turkey Lira
    case TRY
    /// Trinidad and Tobago Dollar
    case TTD
    /// Taiwan New Dollar
    case TWD
    /// Tanzania Shilling
    case TZS
    /// Ukraine Hryvnia
    case UAH
    /// Uganda Shilling
    case UGX
    /// United States Dollar
    case USD
    /// Uruguay Peso
    case UYU
    /// Uzbekistan Som
    case UZS
    /// Venezuela Bolivar
    case VEF
    /// Viet Nam Dong
    case VND
    /// Vanuatu Vatu
    case VUV
    /// Samoa Tala
    case WST
    /// Communauté Financière Africaine (BEAC) CFA Franc BEAC
    case XAF
    /// East Caribbean Dollar
    case XCD
    /// International Monetary Fund (IMF) Special Drawing Rights
    case XDR
    /// Communauté Financière Africaine (BCEAO) Franc
    case XOF
    /// Comptoirs Français du Pacifique (CFP) Franc
    case XPF
    /// Yemen Rial
    case YER
    /// South Africa Rand
    case ZAR
    /// Zambia Kwacha
    case ZMW
    
    /// Modifier
    public var modifier: String {
        return rawValue
    }
    
    /// Type enum
    public var type: NumberFormatterType {
        return .currency
    }
    
    /// NSNumberFormatter style
    public var style: Foundation.NumberFormatter.Style? {
        return .currency
    }

}
