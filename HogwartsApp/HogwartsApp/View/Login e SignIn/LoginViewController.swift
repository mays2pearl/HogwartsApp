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
        
        self.loginButton.layer.cornerRadius = loginButton.layer.frame.height / 2
        self.loginButton.layer.borderWidth = 1
    }
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
//    fileprivate func validateForm() -> Bool {
//            if emailTextField.text!.isEmpty ||
//                !emailTextField.text!.contains(".") ||
//                !emailTextField.text!.contains("@") ||
//                emailTextField.text!.count <= 5 {
//                self.heightLabelError.constant = 20
//                self.setErrorLogin("Verifique o e-mail informado")
//                return false
//            }
//
//            if passwordTextField.text!.isEmpty ||
//                passwordTextField.text!.count < 5 {
//                self.heightLabelError.constant = 20
//                self.setErrorLogin("Verifique a senha informada")
//                return false
//            }
//
//            return true
//        }
}
