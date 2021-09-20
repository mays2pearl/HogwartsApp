//
//  AnimaisCell.swift
//  HogwartsApp
//
//  Created by Maysa on 01/09/21.
//

import UIKit

class BeastTableCell: UITableViewCell {

    @IBOutlet weak var viewMain: GradientView!
    @IBOutlet weak var beastImageView: UIImageView!
    @IBOutlet weak var beastNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Beasts) {
        self.beastImageView.image = UIImage(named: value.avatar ?? "")
        self.beastNameLabel.text = value.name
    }
    
}
