//
//  UIBarButtonItems-Extension.swift
//  DY
//
//  Created by 阮永文 on 2020/10/19.
//  Copyright © 2020 阮永文. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(image: String, highlighted: String = "", size: CGSize = CGSize.zero) {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: image), for: .normal)
        if highlighted != "" {
             button.setImage(UIImage(named: highlighted), for: .highlighted)
        }
        if size == CGSize.zero  {
            button.sizeToFit()
        } else {
            button.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView:button)
    }
}
