//
//  SignupVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class SignupVC: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var verifyPassView: UIView!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var verifyPassText: UITextField!
    
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnWeb: UIButton!
    
    var ui = UIManager()
    var buttons = [UIButton]()
    var views = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons = [btnLogin, btnWeb, btnSignUp]
        views = [emailView, passwordView, verifyPassView]
        
        ui.setBorderTo(buttons: buttons)
        ui.setBorderAndBgTo(views: views)
    }

}
