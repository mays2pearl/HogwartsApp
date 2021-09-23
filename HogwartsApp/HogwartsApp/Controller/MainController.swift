//
//  classeControl.swift
//  HogwartsApp
//
//  Created by Maysa on 25/08/21.
//

import Foundation
import Alamofire


class MainController {
    
    var arrayCharacter: [Character] = []
    
    
    func count() -> Int {
        return self.arrayCharacter.count
    }
    
    func getCharacters(completion: @escaping (Bool) -> Void, erro: @escaping (Error) -> Void) {

        AF.request(DefaultLinks.API_DOWNLOAD).responseJSON { response in
            
            switch response.result {
            case .success(_):
                if let statusCode = response.response?.statusCode {
                    switch statusCode {
                    case 200, 201, 202:
                        guard response.value != nil else {
                            completion(false)
                            return
                        }
                    case 400, 401, 402, 403, 404:
                        print("Erro ao encontrar API")
                        completion(false)
                    default:
                        print("default")
                        completion(false)
                    }
                    } else {
                    completion(false)
                }
            case .failure(let error):
                completion(false)
                print("Erro ao encontrar API")
            }
        }
    }
}
