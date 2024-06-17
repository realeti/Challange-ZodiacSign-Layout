//
//  UITextView + Extensions.swift
//  ZodiacSign-Layout
//
//  Created by Apple M1 on 17.06.2024.
//

import UIKit

extension UITextView {
    convenience init(text: String, textColor: ColorResource, font: UIFont?) {
        self.init()
        
        self.backgroundColor = .clear
        self.text = text
        self.textColor = UIColor(resource: textColor)
        self.font = font
        self.isScrollEnabled = false
        self.isEditable = false
    }
}
