//
//  LoginVC.swift
//  SchoolApp
//
//  Created by Kaushal Topinkatti B on 14/09/21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var btnForgotPass: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnWeb: UIButton!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var ui = UIManager()
    var buttons = [UIButton]()
    var views = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttons = [btnForgotPass, btnLogin, btnSignUp, btnWeb]
        ui.setBorderTo(buttons: buttons)
        views = [emailView, passwordView]
        ui.setBorderAndBgTo(views: views)
        
        let screenSize: CGRect = UIScreen.main.bounds
        print("Width: \(screenSize.width)")
        print("Height: \(screenSize.height)")
        
    }

}
