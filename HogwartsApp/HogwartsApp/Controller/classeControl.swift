//
//  classeControl.swift
//  HogwartsApp
//
//  Created by Maysa on 25/08/21.
//

import Foundation



class ControllerApplication{
    
    var arrayCharacter: [Character] = []
    
    
//    func count() -> Int {
//        return self.arrayCharacter.count
//    }
    
    
    
//    func getCharacters(completion: @escaping (Bool, Error?) -> Void) {
//
//        AF.request("http://hp-api.herokuapp.com/api/characters").responseJSON { response in
//
//            if  response.response?.statusCode == 200 {
//
//                if let data = response.data {
//
//                    do {
//
//
//                        completion(self.arrayTeste  ,true, nil)
//
//                    }catch {
//                        completion([], false,error)
//                        print(error)
//                    }
//                }else {
//
//                    print("deu error")
//                }
//            }
//        }
//
//    }
    
    
    
    
//    func loadJsonCreatures(completionHandler: (_ result: Bool, _ error: Error?) -> Void) {
//        if let path = Bundle.main.path(forResource: "Creatures", ofType: "json"){
//            do {
//                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//                //nome da variavel dicionário
//                if let _jsonResult = jsonResult as? Dictionary<String,AnyObject>, let account = _jsonResult["productList"] as? [[String: Any]]{
//                    for value in account {
//                        self.arrayAccount.append(AccountModel.init(dictionary: value))
//                    }
//                }
//
//                completionHandler(true,nil)
//            }catch{
//                completionHandler(false,error)
//            }
//        }
//    }
    
    
    
}
