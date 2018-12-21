//
//  TwoTableViewController.swift
//  SearchKeywordViewPractice
//
//  Created by 藤田和磨 on 2018/12/21.
//  Copyright © 2018 藤田和磨. All rights reserved.
//

import UIKit

class TwoTableViewController: UIViewController {

    @IBOutlet weak var keywordSearchTableView: UITableView!
    
    @IBOutlet weak var keywordSearchCollectionView: UICollectionView!
    
    // サムネイル画像の名前
    let photos = ["1","2","3","4","5","6","7"]
    
    // Sectionタイトル
    //let sectionTitle = ["評判の病院", "近くの病院"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // TableViewの罫線を消す
        keywordSearchTableView.separatorStyle = .none
        // テーブル行の高さをAutoLayoutで自動調整
        keywordSearchTableView.rowHeight = UITableView.automaticDimension
        // テーブル行の高さの概算値を設定
        keywordSearchTableView.estimatedRowHeight = 295
        keywordSearchTableView.dataSource = self
        keywordSearchTableView.delegate = self
        keywordSearchTableView.register(UINib(nibName: "InstitutionTwoRowsTableViewCell", bundle: nil), forCellReuseIdentifier: "twoRowsTableCell")
    }
}

extension TwoTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    // Section数
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Sectionタイトル
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "評判の病院" as String
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "twoRowsTableCell", for: indexPath) as! InstitutionTwoRowsTableViewCell
        cell.nameLabel1.text = photos[indexPath.row]
        cell.nameLabel2.text = photos[indexPath.row+1]
        cell.institutionImageView1?.clipsToBounds = true
        cell.institutionImageView2?.clipsToBounds = true
        //cell.institutionImageView1?.image = UIImage(named: photos[indexPath.row])
        //cell.institutionImageView2?.image = UIImage(named: photos[indexPath.row+1])
        return cell
/*
        switch indexPath.section {
        case 0: // 評判の医院
            let cell = tableView.dequeueReusableCell(withIdentifier: "oneRowTableCell", for: indexPath) as! InstitutionOneRowTableViewCell
            cell.nameLabel.text = photos[indexPath.row]
            cell.pagerView?.clipsToBounds = true
            //cell.practiceImageView?.image = UIImage(named: photos[indexPath.row])
            //セルの背景色をランダムに設定する。
            cell.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha:1.0)
            return cell
        default: // 近くの医院
            let cell = tableView.dequeueReusableCell(withIdentifier: "twoRowsTableCell", for: indexPath) as! InstitutionTwoRowsTableViewCell
            cell.nameLabel1.text = photos[indexPath.row]
            cell.nameLabel2.text = photos[indexPath.row+1]
            cell.institutionImageView1?.clipsToBounds = true
            cell.institutionImageView2?.clipsToBounds = true
            //cell.institutionImageView1?.image = UIImage(named: photos[indexPath.row])
            //cell.institutionImageView2?.image = UIImage(named: photos[indexPath.row+1])
         
            //セルの背景色をランダムに設定する。
            cell.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha:1.0)
            return cell
        }
*/
    }

    // Table Viewのセルの数を指定
    func tableView(_ table: UITableView, numberOfRowsInSection section: Int) -> Int {
        // レコメンド医院
        if section == 0 {
            return 2
        }
        /*
            // その他の医院
        else if section == 1 {
            // UICollectionViewを設定するセル
            return 1
        }
        else {
            return 0
        }
        */
        return 0
    }
    
    //この関数内でセクションの設定を行う
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label : UILabel = UILabel()
        
        label.backgroundColor = .white
        if section == 0 {
            label.font = UIFont.boldSystemFont(ofSize: CGFloat(30))
            //label.text = sectionTitle[section]
        }
        return label
    }
    
}
