//
//  HomeCollectionCell.swift
//  what'sApp
//
//  Created by Asir Ahmed on 25/2/24.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    
    
    static let identifier = String(describing: HomeCollectionCell.self)
    
    static func nib()-> UINib {
        return UINib(nibName: String(describing: HomeCollectionCell.self), bundle: nil)
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    public func configure(name: String) {
        
        self.lblName.text = name
    }

}
