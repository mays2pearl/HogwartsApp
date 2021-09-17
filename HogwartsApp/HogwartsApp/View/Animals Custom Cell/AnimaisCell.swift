//
//  AnimaisCell.swift
//  HogwartsApp
//
//  Created by Maysa on 01/09/21.
//

import UIKit

class AnimaisCell: UITableViewCell {

    @IBOutlet weak var imageAnimais: UIImageView!
    
    @IBOutlet weak var nomeAnimais: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
