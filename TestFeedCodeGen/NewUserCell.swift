//
//  NewUserCell.swift
//  TestFeedCodeGen
//
//  Created by Peerasak Unsakon on 11/03/2021.
//

import UIKit

class NewUserCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func configure(data: String) {
        // ... setup NewUserCell ... //
        titleLabel.text = "Username: \(data)"
    }
    
}
