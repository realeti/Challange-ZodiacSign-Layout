//
//  UIButton + Extensions.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 16.06.2024.
//

import UIKit

extension UIButton {
    convenience init(image: ImageResource) {
        self.init(type: .system)
        
        let buttonImage = UIImage(resource: image)
        self.setImage(buttonImage, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
