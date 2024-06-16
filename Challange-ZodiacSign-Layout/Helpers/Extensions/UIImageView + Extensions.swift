//
//  UIImageView + Extensions.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 16.06.2024.
//

import UIKit

extension UIImageView {
    convenience init(image: ImageResource, contentMode: UIView.ContentMode = .scaleAspectFit) {
        self.init()
        
        self.image = UIImage(resource: image)
        self.contentMode = contentMode
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
