//
//  HomeViewController.swift
//  DY
//
//  Created by 阮永文 on 2020/10/19.
//  Copyright © 2020 阮永文. All rights reserved.
//

import UIKit

fileprivate let kPageTitleBarH: CGFloat = 40
class HomeViewController: UIViewController {

    lazy var pageTitleView: PageTitleView = {
        let frame = CGRect(x: 0, y: kStatusBarH + (self.navigationController?.navigationBar.frame.size.height)!, width: kScreenW, height: kPageTitleBarH)
        let labels = ["推荐", "游戏", "娱乐", "趣玩"]
        let pageTitleView = PageTitleView(frame: frame, labels: labels)
        return pageTitleView
    }()
    
    lazy var pageContentView: PageContentView = {[weak self] in
        var childVcs = [UIViewController]()
        for _ in 0..<4 {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor(r: CGFloat(arc4random_uniform(255)), g: CGFloat(arc4random_uniform(255)), b: CGFloat(arc4random_uniform(255)))
            childVcs.append(vc)
        }
        let frame = CGRect(x: 0.0, y: pageTitleView.frame.maxY, width: view.frame.width, height: kScreenH - pageTitleView.frame.maxY)
        let pageContentView = PageContentView(frame: frame, childVcs: childVcs, parentVc: self)
        return pageContentView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

}

//设置UI
extension HomeViewController {
    private func setupUI() {
        setupNavbar()
        
        view.addSubview(pageTitleView)
        view.addSubview(pageContentView)
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
