//
//  PageTitleView.swift
//  DY
//
//  Created by 阮永文 on 2020/10/19.
//  Copyright © 2020 阮永文. All rights reserved.
//

import UIKit

/*
 src
    labels
 底部线
 底部滚动条
 */
let kScrollLineH:CGFloat = 2
class PageTitleView: UIView {

    private var titles = [String]()
    lazy var labels = [UILabel]()
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.bounces = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        return scrollView
    }()
    lazy var scrollLine: UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = .orange
        return scrollLine
    }()
    
    init(frame: CGRect, labels: [String]) {
        self.titles = labels
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - 设置UI
extension PageTitleView {
    private func setupUI(){
        //设置src
        addSubview(self.scrollView)
        scrollView.frame = bounds
        
        setupLabels()
        
        setupBottomLineAndScrollLine()
    }
    
    private func setupLabels() {
        let titleY:CGFloat = 0
        let titleW:CGFloat = frame.size.width / CGFloat(titles.count)
        let titleH:CGFloat = frame.size.height
        
        for (index, title) in titles.enumerated() {
            let label = UILabel()
            label.text = title
            
            label.textAlignment = .center
            label.textColor = .darkGray
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.frame = CGRect(x:CGFloat(index) * titleW, y: titleY, width: titleW, height: titleH)
            labels.append(label)
            scrollView.addSubview(label)
        }
    }
    
    private func setupBottomLineAndScrollLine() {
        //设置底部线条
        let bottomLine = UIView()
        bottomLine.backgroundColor = .lightGray
        bottomLine.frame = CGRect(x: 0, y: frame.size.height - 1, width: frame.size.width, height: 1)
        addSubview(bottomLine)
        
        
        guard let firstLabel = labels.first else { return }
        firstLabel.textColor = .orange
        
        
        //设置滚动条
        addSubview(scrollLine)
        scrollLine.frame = CGRect(x: 0, y: self.frame.height - kScrollLineH, width: firstLabel.frame.width, height: kScrollLineH)
    }
   
}
