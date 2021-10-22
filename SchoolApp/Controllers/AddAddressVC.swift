//
//  AddAddressVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class AddAddressVC: UIViewController {

    @IBOutlet weak var boxOne: UIView!
    @IBOutlet weak var boxThree: UIView!
    @IBOutlet weak var bxoTwo: UIView!
    @IBOutlet weak var boxFour: UIView!
    
    @IBOutlet weak var lineONe: UIView!
    @IBOutlet weak var lineTwo: UIView!
    @IBOutlet weak var lineThree: UIView!
    
    @IBOutlet weak var addOneView: UIView!
    @IBOutlet weak var addTwoView: UIView!
    @IBOutlet weak var localityView: UIView!
    @IBOutlet weak var pincodeView: UIView!
    @IBOutlet weak var cityView: UIView!
    @IBOutlet weak var stateView: UIView!
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    var ui = UIManager()
    var views = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        views = [addOneView, addTwoView, localityView, pincodeView, cityView, stateView]
        
        ui.setCircularLighter(screenTitle: "AddAddressVC", boxOne, bxoTwo, boxThree, boxFour, lineOne: lineONe, lineTwo: lineTwo, lineThree: lineThree)
        ui.setBorderTo(buttons: [btnSubmit])
        ui.setBorderAndBgTo(views: views)
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
