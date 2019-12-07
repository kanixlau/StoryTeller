//
//  HomePageTableViewCell.swift
//  LoveStory
//
//  Created by Kanix Lau on 7/11/2019.
//  Copyright © 2019 KanixLau. All rights reserved.
//

import UIKit

class HomePageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cellPicture: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellPicture.layer.cornerRadius = 20
        print(cellPicture.clipsToBounds)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
