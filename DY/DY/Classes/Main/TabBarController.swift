//
//  TabBarController.swift
//  DY
//
//  Created by 阮永文 on 2020/10/19.
//  Copyright © 2020 阮永文. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        tabBar.tintColor = .orange
        addChildVc("Home")
        addChildVc("Live")
        addChildVc("Follow")
        addChildVc("Profile")
    }
    
    private func addChildVc(_ name: String) {
        let nvc = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        
        addChild(nvc)
    }
}
