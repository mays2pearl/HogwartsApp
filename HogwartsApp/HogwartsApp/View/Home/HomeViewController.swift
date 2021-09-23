//
//  HomeController.swift
//  HogwartsApp
//
//  Created by Maysa on 27/08/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var viewMain: GradientView!
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var homeCollection: UICollectionView!
    @IBOutlet weak var viewContent: GradientView!
    
    private var homeImageIcon = ["character_icon", "beast_icon", "quiz_icon", "hat", "favorite_icon"]
    private var homeNameIcon = ["Personagens", "Animais Fantásticos", "Quiz", "Chapéu Seletor", "Favoritos"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeCollection.delegate = self
        homeCollection.dataSource = self
        homeCollection.register(UINib(nibName: "ButtonCollectionCell", bundle: nil), forCellWithReuseIdentifier: "ButtonCollectionCell")

        // Do any additional setup after loading the view.
    }
    
}

//MARK: - CollectionView properties
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeNameIcon.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: ButtonCollectionCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCollectionCell", for: indexPath) as? ButtonCollectionCell
        
        cell?.iconImageView.image = UIImage(named: homeImageIcon[indexPath.row])
        cell?.nameLabel.text = homeNameIcon[indexPath.row]
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let navigationChoosed = homeNameIcon[indexPath.row]
        
        if navigationChoosed == "Personagens" {
            let storyboard = UIStoryboard(name: "Characters", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "CharactersViewController") as! CharactersViewController
            vc.providesPresentationContextTransitionStyle = true
            vc.definesPresentationContext = true
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        } else if navigationChoosed == "Animais Fantásticos" {
            let storyboard = UIStoryboard(name: "Beasts", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "BeastsViewController") as! BeastsViewController
            vc.providesPresentationContextTransitionStyle = true
            vc.definesPresentationContext = true
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        } else if navigationChoosed == "Quiz" {
            let storyboard = UIStoryboard(name: "Quiz", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
            vc.providesPresentationContextTransitionStyle = true
            vc.definesPresentationContext = true
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        } else if navigationChoosed == "Chapéu Seletor" {
            let storyboard = UIStoryboard(name: "Hat", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "HatViewController") as! HatViewController
            vc.providesPresentationContextTransitionStyle = true
            vc.definesPresentationContext = true
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FavoritesViewController") as! FavoritesViewController
            vc.providesPresentationContextTransitionStyle = true
            vc.definesPresentationContext = true
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
}
