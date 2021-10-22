//
//  AddMembersVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class AddMembersVC: UIViewController {

    @IBOutlet weak var boxOne: UIView!
    @IBOutlet weak var boxTwo: UIView!
    @IBOutlet weak var boxThree: UIView!
    @IBOutlet weak var boxFour: UIView!
    
    @IBOutlet weak var lineOne: UIView!
    @IBOutlet weak var lineTwo: UIView!
    @IBOutlet weak var lineThree: UIView!
    
    @IBOutlet weak var principalView: UIView!
    @IBOutlet weak var adminView: UIView!
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBOutlet weak var princiText: UITextField!
    @IBOutlet weak var adminText: UITextField!
    
    var ui = UIManager()
    var views = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        views = [principalView, adminView]
        
        ui.setCircularLighter(screenTitle: "AddMembersVC", boxOne, boxTwo, boxThree, boxFour, lineOne: lineOne, lineTwo: lineTwo, lineThree: lineThree)
        ui.setBorderTo(buttons: [btnNext])
        ui.setBorderAndBgTo(views: views)
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
