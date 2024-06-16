//
//  UILabel + Extensions.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 16.06.2024.
//

import UIKit

extension UILabel {
    convenience init(color: ColorResource, font: UIFont?, alignment: NSTextAlignment = .left, numberOfLines: Int = 1) {
        self.init()
        
        self.textColor = UIColor(resource: color)
        self.font = font
        self.textAlignment = alignment
        self.numberOfLines = numberOfLines
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
