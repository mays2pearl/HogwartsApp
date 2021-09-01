//
//  LoginViewController.swift
//  HogwartsApp
//
//  Created by Elena Diniz on 22/08/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "HomeController", sender: "HomeController")
        
    }
}
