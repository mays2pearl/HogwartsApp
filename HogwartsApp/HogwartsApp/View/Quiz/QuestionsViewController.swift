//
//  QuizViewControllerQuestions.swift
//  HogwartsApp
//
//  Created by Daniel Washington Ignacio on 01/09/21.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    @IBOutlet weak var imageCharacter: UIImageView!
    @IBOutlet weak var textFieldInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func checkButton(_ sender: UIButton) {
        print("clicked")
    }
    
}
