//
//  ZodiacInfo.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 09.06.2024.
//

import Foundation

typealias ZodiacProperties = (element: ZodiacElement, stone: ZodiacStone, color: ZodiacColor, abode: ZodiacAbode)
typealias ZodiacCharacterTraits = (luck: Int, kindness: Int, mind: Int)

struct ZodiacInfo {
    static func getProperties(sign: ZodiacSign) -> ZodiacProperties {
        switch sign {
        case .aries:
            return (.fire, .diamond, .red, .mars)
        case .taurus:
            return (.earth, .emerald, .green, .venus)
        case .gemini:
            return (.wind, .pearl, .yellow, .mercury)
        case .cancer:
            return (.water, .onyx, .white, .moon)
        case .leo:
            return (.fire, .amber, .gold, .sun)
        case .virgo:
            return (.earth, .sapphire, .brown, .mercury)
        case .libra:
            return (.wind, .opal, .pink, .venus)
        case .scorpius:
            return (.wind, .topaz, .black, .pluto)
        case .sagittarius:
            return (.fire, .turquoise, .violet, .jupiter)
        case .capricornus:
            return (.earth, .pomegranate, .grey, .saturn)
        case .aquarius:
            return (.wind, .amethyst, .blue, .uranus)
        case .pisces:
            return (.water, .aquamarine, .lightGreen, .neptune)
        }
    }
    
    static func getCharacterTraits(sign: ZodiacSign) -> ZodiacCharacterTraits {
        switch sign {
        case .aries:
            return (luck: 4, kindness: 4, mind: 5)
        case .taurus:
            return (luck: 7, kindness: 7, mind: 6)
        case .gemini:
            return (luck: 3, kindness: 4, mind: 8)
        case .cancer:
            return (luck: 3, kindness: 9, mind: 6)
        case .leo:
            return (luck: 6, kindness: 7, mind: 7)
        case .virgo:
            return (luck: 2, kindness: 6, mind: 9)
        case .libra:
            return (luck: 5, kindness: 8, mind: 8)
        case .scorpius:
            return (luck: 4, kindness: 2, mind: 9)
        case .sagittarius:
            return (luck: 10, kindness: 6, mind: 7)
        case .capricornus:
            return (luck: 9, kindness: 3, mind: 8)
        case .aquarius:
            return (luck: 5, kindness: 5, mind: 10)
        case .pisces:
            return (luck: 8, kindness: 10, mind: 5)
        }
    }
}
