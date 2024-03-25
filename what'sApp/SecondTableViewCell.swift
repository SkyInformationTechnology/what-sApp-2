//
//  SecondTableViewCell.swift
//  what'sApp
//
//  Created by Md Akash on 20/2/24.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLable: UILabel!
    @IBOutlet weak var photolable: UIImageView!
    @IBOutlet weak var dayLable: UILabel!
    @IBOutlet weak var unseenLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
