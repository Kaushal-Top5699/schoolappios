//
//  HomeScreenCell.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class HomeScreenCell: UICollectionViewCell {

    @IBOutlet weak var homeCellView: UIView!
    @IBOutlet weak var cellName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        homeCellView.layer.cornerRadius = 8
        
    }

}
