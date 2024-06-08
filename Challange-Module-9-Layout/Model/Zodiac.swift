//
//  Zodiac.swift
//  Challange-Module-9-Layout
//
//  Created by Apple M1 on 08.06.2024.
//

import Foundation

enum ZodiacSign: String {
    case aries = "Овен"
    case taurus = "Телец"
    case gemini = "Близнецы"
    case cancer = "Рак"
    case leo = "Лев"
    case virgo = "Дева"
    case libra = "Весы"
    case scorpius = "Скорпион"
    case sagittarius = "Стрелец"
    case capricornus = "Козерог"
    case aquarius = "Водолей"
    case pisces = "Рыбы"
}

enum ZodiacElement: String {
    case fire = "Огонь"
    case earth = "Земля"
    case wind = "Воздух"
    case water = "Вода"
}

enum ZodiacStone: String {
    case diamond = "Алмаз"
    case emerald = "Изумруд"
    case pearl = "Жемчуг"
    case onyx = "Оникс"
    case amber = "Янтарь"
    case sapphire = "Сапфир"
    case opal = "Опал"
    case topaz = "Топаз"
    case turquoise = "Бирюзовый"
    case pomegranate = "Гранат"
    case amethyst = "Аметист"
    case aquamarine = "Аквамарин"
}

enum ZodiacColor: String {
    case red = "Красный"
    case green = "Зеленый"
    case blue = "Синий"
    case yellow = "Желтый"
    case white = "Белый"
    case black = "Черный"
    case gold = "Золотой"
    case brown = "Коричневый"
    case pink = "Розовый"
    case violet = "Фиолетовый"
    case grey = "Серый"
    case lightGreen = "Светло-зеленый"
}

enum ZodiacAbode: String {
    case mars = "Марс"
    case venus = "Венера"
    case mercury = "Меркурий"
    case moon = "Луна"
    case sun = "Солнце"
    case pluto = "Плутон"
    case jupiter = "Юпитер"
    case saturn = "Сатурн"
    case uranus = "Уран"
    case neptune = "Нептун"
}

typealias ZodiacProperties = (element: ZodiacElement, stone: ZodiacStone, color: ZodiacColor, abode: ZodiacAbode)

struct Zodiac {
    var sign: ZodiacSign
    
    private var properties: ZodiacProperties {
        get {
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
    
    var ascendant: String = "Стрелец" // mock data
    
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
