//
//  AnimaisController.swift
//  HogwartsApp
//
//  Created by Maysa on 01/09/21.
//

import UIKit

class BeastsViewController: UIViewController {

    @IBOutlet weak var viewMain: GradientView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var beastsTableView: UITableView!
    @IBOutlet weak var search: UISearchBar!
    
    private var controller: BeastsController = BeastsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.beastsTableView.register(UINib(nibName: "BeastTableCell", bundle: nil), forCellReuseIdentifier: "BeastTableCell")
        self.beastsTableView.delegate = self
        self.beastsTableView.dataSource = self
        
        self.controller.loadBeasts { success, error in
            if success {
                self.beastsTableView.reloadData()
            } else {
                print(error)
            }
        }

        // Do any additional setup after loading the view.
    }

}

//MARK: - TableView properties
extension BeastsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.controller.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: BeastTableCell? = tableView.dequeueReusableCell(withIdentifier: "BeastTableCell", for: indexPath) as? BeastTableCell
        
        cell?.setup(value: self.controller.loadCurrentBeast(indexPath: [indexPath.row]))
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
}
