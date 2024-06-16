//
//  UIView + Extensions.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 08.06.2024.
//

import UIKit

extension UIView {
    func makeShadow(color: UIColor) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = 1.0
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.layer.shadowRadius = 16
    }
}
