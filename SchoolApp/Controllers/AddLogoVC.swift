//
//  AddLogoVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class AddLogoVC: UIViewController {

    @IBOutlet weak var boxOne: UIView!
    @IBOutlet weak var boxThree: UIView!
    @IBOutlet weak var bixTwo: UIView!
    @IBOutlet weak var boxFour: UIView!
    
    @IBOutlet weak var lineOne: UIView!
    @IBOutlet weak var lineTwo: UIView!
    @IBOutlet weak var lineThre: UIView!
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    var ui = UIManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ui.setCircularLighter(screenTitle: "AddLogoVC", boxOne, bixTwo, boxThree, boxFour, lineOne: lineOne, lineTwo: lineTwo, lineThree: lineThre)
        ui.setBorderTo(buttons: [btnNext])
    }

    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
