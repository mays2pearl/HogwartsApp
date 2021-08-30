//
//  PersonagensCell.swift
//  HogwartsApp
//
//  Created by Maysa on 29/08/21.
//

import UIKit

class PersonagensCell: UITableViewCell {
    
    @IBOutlet weak var imagemPersonagem: UIImageView!
    
    
    @IBOutlet weak var nomePersonagem: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
