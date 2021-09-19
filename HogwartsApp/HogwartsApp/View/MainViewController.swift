//
//  ViewController.swift
//  HogwartsApp
//
//  Created by Elena Diniz on 22/08/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var logoImageVIew: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.black.cgColor, UIColor.black.cgColor, UIColor.darkGray.cgColor]
        newLayer.frame = self.viewMain.frame
//        newLayer.startPoint = CGPoint(x: 0, y: 0)
//        newLayer.endPoint = CGPoint(x: 1, y: 1)
        
        self.viewMain.layer.addSublayer(newLayer)
        }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
    }

    @IBAction func tappedSignInButton(_ sender: UIButton) {
    }
    
//    @IBAction func crashButtonTapped(_ sender: AnyObject) {
//          let numbers = [0]
//          let _ = numbers[1]
//      }
}

