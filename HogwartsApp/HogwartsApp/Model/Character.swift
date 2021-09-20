//
//  Character.swift
//  HogwartsApp
//
//  Created by Daniel Washington Ignacio on 01/09/21.
//

import Foundation


struct Character: Codable {
    
    var name: String?
    var species: String?
    var gender: String?
    var house: String?
    var dateOfBirth: String?
    var yearOfBirth: Int?
    var ancestry: String?
    var eyeColour: String?
    var hairColour: String?
    var wand: [Wand]?
    var patronous: String?
    var hogwartsStudent: Bool?
    var hogwartsStaff: Bool?
    var actor: String?
    var alive: Bool?
    var image: String?
    
}

struct Wand: Codable {
    var wood: String?
    var core: String?
    var length: Int?
    
}
