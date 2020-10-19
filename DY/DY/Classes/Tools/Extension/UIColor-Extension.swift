//
//  UIColor-Extension.swift
//  DY
//
//  Created by 阮永文 on 2020/10/19.
//  Copyright © 2020 阮永文. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
    }
}
