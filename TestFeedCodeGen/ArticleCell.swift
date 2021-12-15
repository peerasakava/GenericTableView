//
//  ArticleCell.swift
//  TestFeedCodeGen
//
//  Created by Peerasak Unsakon on 11/03/2021.
//

import UIKit

class ArticleCell: UITableViewCell, ConfigurableCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func configure(data: Int) {
        // ... setup ArticleCell ... //
        titleLabel.text = "Article Id: \(data)"
        
    }
    
}
