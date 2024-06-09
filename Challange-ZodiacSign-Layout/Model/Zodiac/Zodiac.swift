//
//  Zodiac.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 08.06.2024.
//

import Foundation

struct Zodiac {
    var sign: ZodiacSign
    
    var zodiacName: String {
        return sign.rawValue
    }
    
    var element: String {
        return ZodiacInfo.getProperties(sign: sign).element.rawValue
    }
    
    var stone: String {
        return ZodiacInfo.getProperties(sign: sign).stone.rawValue
    }
    
    var ascendant: String = "Водолей" // mock data
    
    var color: String {
        return ZodiacInfo.getProperties(sign: sign).color.rawValue
    }
    
    var abode: String {
        return ZodiacInfo.getProperties(sign: sign).abode.rawValue
    }
    
    var luck: Int {
        return ZodiacInfo.getCharacterTraits(sign: sign).luck
    }
    
    var kindness: Int {
        return ZodiacInfo.getCharacterTraits(sign: sign).kindness
    }
    
    var mind: Int {
        return ZodiacInfo.getCharacterTraits(sign: sign).mind
    }
    
    struct CharacterTraits {
        var luck: Int
        var kindness: Int
        var mind: Int
    }
}
