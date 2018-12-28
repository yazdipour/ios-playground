//
//  ColorExntension.swift
//  test
//
//  Created by Shahriar on 12/28/18.
//  Copyright © 2018 Shahriar. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) { //WTF convenience
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(rgb: Int) {
        self.init(red: (rgb >> 16) & 0xFF, green: (rgb >> 8) & 0xFF, blue: rgb & 0xFF)
    }

    static var myBlue: UIColor { return UIColor.init(rgb: 0x12D8FA) } 

    static var myBlue2: UIColor { return UIColor.init(rgb: 0x1FA2FF); }

}
