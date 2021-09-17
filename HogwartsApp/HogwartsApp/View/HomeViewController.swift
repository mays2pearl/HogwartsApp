//
//  HomeController.swift
//  HogwartsApp
//
//  Created by Maysa on 27/08/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var personagensButton: UIButton!
    
    @IBOutlet weak var animaisButton: UIButton!
    
    @IBOutlet weak var chapeuSelButton: UIButton!
    
    @IBOutlet weak var quizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func PersonagensButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "PersonagensEAnimais", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PersonagensController") as! PersonagensController
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .automatic
        self.present(vc, animated: true, completion: nil)
    
    }
    
    @IBAction func tappedBeastButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "PersonagensEAnimais", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AnimaisController") as! AnimalsViewController
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .automatic
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func tappedSelectorHatButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Hat", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HatViewController") as! HatViewController
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .automatic
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func tappedQuizButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Quiz", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .automatic
        self.present(vc, animated: true, completion: nil)
    }
    
}
