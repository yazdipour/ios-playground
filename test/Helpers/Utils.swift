//
//  Utils.swift
//  test
//
//  Created by Shahriar on 12/28/18.
//  Copyright © 2018 Shahriar. All rights reserved.
//

import UIKit

class Utils {


    static func printAllAvailableFonts() {
        for f in UIFont.familyNames.sorted() {
            let name = UIFont.fontNames(forFamilyName: f)
            print("\(f):\(name)\n")
        }
    }

}
