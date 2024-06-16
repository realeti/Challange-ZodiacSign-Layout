//
//  UIProgressView + Extensions.swift
//  Challange-ZodiacSign-Layout
//
//  Created by Apple M1 on 17.06.2024.
//

import UIKit

extension UIProgressView {
    convenience init(tintColor: ColorResource, trackTintColor: ColorResource, cornerRadius: CGFloat) {
        self.init()
        
        self.progressTintColor = UIColor(resource: tintColor)
        self.trackTintColor = UIColor(resource: trackTintColor).withAlphaComponent(0.3)
        self.layer.cornerRadius = cornerRadius
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
