//
//  InstitutionOneRowTableViewCell.swift
//  SearchKeywordViewPractice
//
//  Created by 藤田和磨 on 2018/12/21.
//  Copyright © 2018 藤田和磨. All rights reserved.
//

import UIKit
import FSPagerView
import CHIPageControl

class InstitutionOneRowTableViewCell: UITableViewCell {


    @IBOutlet weak var pageControl: CHIPageControlAleppo! {
        didSet {
            self.pageControl.frame = CGRect(x: 0, y:0, width: 100, height: 20)
        }
    }
    
    @IBOutlet weak var pagerView: FSPagerView! {
        didSet {
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupPagerView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupPagerView() {
        //UICollectionViewとほとんど同じ感じで設定ができる
        
        //pagerView.delegate = self
        //pagerView.dataSource = self
        pagerView.isInfinite = true
        // エフェクト coverFlow .linear, .overlap などは以下を有効にする
        // pagerView.itemSize = CGSize(width: 300, height: 200)
        // pagerView.itemSize = FSPagerView.automaticSize
        // pagerView.interitemSpacing = 16
        //  pagerView.transformer = FSPagerViewTransformer(type: .linear)
        // エフェクト .crossFading, .zoomOut, .depth のときは以下を有効
        // pagerView.transformer = FSPagerViewTransformer(type: .zoomOut)
        pagerView.itemSize = FSPagerView.automaticSize
        pagerView.decelerationDistance = 1
        
        // Automatic Slider
        // pagerView.automaticSlidingInterval = 4
        
        // 画像をmodelから取得
        // coverflowContents = Coverflow.getSampleData()
        
        // pageControl設定
        // pageControl.numberOfPages = coverflowContents.count
        //pageControl.itemSpacing = 5
        //pageControl.interitemSpacing = 10
        // pageControl?.numberOfPages = 5
        // ドットの大きさ
        pageControl.radius = 4
        // ドットの幅
        pageControl.padding = 8
        // ドット色
        pageControl.tintColor = .white
        // アクティブなドット色
        pageControl.currentPageTintColor = .white
        // 非アクティブなドットの透明度
        pageControl.inactiveTransparency = 0.7
        
        pagerView.addSubview(pageControl)
    }

    
    
}
