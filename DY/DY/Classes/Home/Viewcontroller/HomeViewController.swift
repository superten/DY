//
//  HomeViewController.swift
//  DY
//
//  Created by 阮永文 on 2020/10/19.
//  Copyright © 2020 阮永文. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

//设置UI
extension HomeViewController {
    private func setupUI() {
        setupNavbar()
    }
    
    private func setupNavbar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: "logo")
        
        let size = CGSize(width: 40, height: 40)
        let history = UIBarButtonItem(image: "image_my_history", highlighted: "Image_my_history_click", size: size)
        let search = UIBarButtonItem(image: "btn_search", highlighted: "btn_search_clicked", size: size)
        let qrcode = UIBarButtonItem(image: "Image_scan", highlighted: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [history, search, qrcode]
    }
}
