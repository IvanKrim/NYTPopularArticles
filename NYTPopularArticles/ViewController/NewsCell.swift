//
//  NewsCell.swift
//  NYTPopularArticles
//
//  Created by Kalabishka Ivan on 08.06.2021.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var abstractLabel: UILabel!
    
    let networkManager = NetworkNewsManager()
    
    override func awakeFromNib() {
        super.awakeFromNib()

        titleLabel.text = "SimpleLabel 123"
        abstractLabel.text = "Simple abstract 123"
        
    }
    
    
    

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//
//    }

}
