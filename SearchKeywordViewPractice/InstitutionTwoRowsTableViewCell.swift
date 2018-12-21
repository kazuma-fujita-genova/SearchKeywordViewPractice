//
//  InstitutionTwoRowsTableViewCell.swift
//  SearchKeywordViewPractice
//
//  Created by 藤田和磨 on 2018/12/21.
//  Copyright © 2018 藤田和磨. All rights reserved.
//

import UIKit

class InstitutionTwoRowsTableViewCell: UITableViewCell {

    @IBOutlet weak var institutionImageView1: UIImageView!
    
    @IBOutlet weak var nameLabel1: UILabel!
    
    @IBOutlet weak var addressLabel1: UILabel!
    
    @IBOutlet weak var institutionImageView2: UIImageView!
    
    @IBOutlet weak var nameLabel2: UILabel!
    
    @IBOutlet weak var addressLabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
