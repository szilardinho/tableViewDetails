//
//  NewsCell.swift
//  tableViewDetails
//
//  Created by Szi Gabor on 4/1/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    @IBOutlet weak var newsPreviewImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUserInterface(dataModel: NusyntaxDataModel)
    {
        newsTitle.text = dataModel.articleTitle
        //TO DO: Set image from URL
    }   

}
