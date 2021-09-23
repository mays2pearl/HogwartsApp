//
//  DetailsPersonagensController.swift
//  HogwartsApp
//
//  Created by Maysa on 29/08/21.
//

import UIKit

class CharactersDetailViewController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var saveFavoriteButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedCloseButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func tappedSaveFavoriteButton(_ sender: UIButton) {
        
    }
}
