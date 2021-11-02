//
//  ArticleTableViewCell.swift
//  GoodNew
//
//  Created by Papon Supamongkonchai on 2/11/2564 BE.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak  var lblTitle : UILabel!
    @IBOutlet weak  var lblDescription : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
