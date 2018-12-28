//
//  GDGradient.swift
//  test
//
//  Created by Shahriar on 12/28/18.
//  Copyright © 2018 Shahriar. All rights reserved.
//

import UIKit

class GDGradient: UIView {
//    let colors: [CGColor] = [
//        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
//        UIColor.init(red: 50, green: 123, blue: 213).cgColor
//    ]
    let colors: [CGColor] = [
        UIColor.init(rgb: 0x1A2980).cgColor,
        UIColor.init(rgb: 0x26D0CE).cgColor
    ]
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false

        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.colors
            layer.locations = [0.0, 1.2]
        }
    }

    override class var layerClass: AnyClass { //TODO what does this mean?!
        return CAGradientLayer.self
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
