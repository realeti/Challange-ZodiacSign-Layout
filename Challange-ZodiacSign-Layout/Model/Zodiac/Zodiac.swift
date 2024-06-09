//
//  Zodiac.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 08.06.2024.
//

import Foundation

typealias ZodiacProperties = (element: ZodiacElement, stone: ZodiacStone, color: ZodiacColor, abode: ZodiacAbode)
typealias ZodiacCharacterTraits = (luck: Int, kindness: Int, mind: Int)

struct Zodiac {
    var sign: ZodiacSign
    
    private var properties: ZodiacProperties {
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
    
    private var characterTraits: ZodiacCharacterTraits {
        switch sign {
        case .aries:
            return
        case .taurus:
            return
        case .gemini:
            return
        case .cancer:
            return
        case .leo:
            return
        case .virgo:
            return
        case .libra:
            return
        case .scorpius:
            return
        case .sagittarius:
            return
        case .capricornus:
            return
        case .aquarius:
            return
        case .pisces:
            return
        }
    }
    
    var zodiacName: String {
        return sign.rawValue
    }
    
    var element: String {
        return properties.element.rawValue
    }
    
    var stone: String {
        return properties.stone.rawValue
    }
    
    var ascendant: String = "Водолей" // mock data
    
    var color: String {
        return properties.color.rawValue
    }
    
    var abode: String {
        return properties.abode.rawValue
    }
    
    struct CharacterTraits {
        var luck: Int
        var kindness: Int
        var mind: Int
    }
}
