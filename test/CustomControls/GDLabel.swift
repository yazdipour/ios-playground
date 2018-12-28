//
//  GDLabel.swift
//  test
//
//  Created by Shahriar on 12/28/18.
//  Copyright © 2018 Shahriar. All rights reserved.
//

import UIKit

class GDLabel: UILabel {

    init(text: String = "",
        textColor: UIColor = .white,
        textSize: CGFloat = 16,
        fontFamily: String = "",
        textAlignment: NSTextAlignment = .center,
        frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false //WTF does it mean
        }
        self.text = text
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.font = fontFamily == "" ? UIFont.systemFont(ofSize: textSize) : UIFont.init(name: fontFamily, size: textSize)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
