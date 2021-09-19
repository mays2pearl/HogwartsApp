//
//  AnimaisController.swift
//  HogwartsApp
//
//  Created by Maysa on 01/09/21.
//

import UIKit

class AnimalsViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var SearchAnimais: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        self.myTableView.register(UINib(nibName: "AnimaisCell", bundle: nil), forCellReuseIdentifier: "AnimaisCell")

        // Do any additional setup after loading the view.
    }

}

extension AnimalsViewController :UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: AnimaisCell? = tableView.dequeueReusableCell(withIdentifier: "AnimaisCell", for: indexPath) as? AnimaisCell
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "DetailsPersonagensController", sender: "DetailsPersonagensController")
    }
}
