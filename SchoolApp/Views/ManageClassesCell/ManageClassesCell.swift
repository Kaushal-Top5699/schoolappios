//
//  ManageClassesCell.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 19/09/21.
//

import UIKit

class ManageClassesCell: UITableViewCell {

    @IBOutlet weak var cellCiew: UIView!
    @IBOutlet weak var optionLabel: UILabel!
    
    var uiManager = UIManager()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        uiManager.setBorderAndBgTo(views: [cellCiew])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
