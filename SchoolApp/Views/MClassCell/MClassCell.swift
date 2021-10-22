//
//  MClassCell.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class MClassCell: UITableViewCell {

    @IBOutlet weak var optionLable: UILabel!
    @IBOutlet weak var optionCell: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
