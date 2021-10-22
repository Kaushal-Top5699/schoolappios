//
//  StudentCell.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 16/09/21.
//

import UIKit

class StudentCell: UITableViewCell {

    @IBOutlet weak var studentImageView: UIImageView!
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentRollNoLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    var uiManager = UIManager()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        uiManager.setBorderAndBgTo(views: [cellView])
        uiManager.makeCicularImage(image: studentImageView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
