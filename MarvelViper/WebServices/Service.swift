//
//  Api.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 20/08/23.
//

import Foundation
import Alamofire

class MarvelService {
    static let shared = MarvelService()
    
    
    func getCharacters(completion: @escaping (Welcome) ->()) {
        
        let fullUrl = "https://gateway.marvel.com/v1/public/characters?ts=1&apikey=0b2ab777bfbcd8a87de197eb7ae78888&hash=1d0846bfe34189618275355b4ce87cb2"
        
        AF.request(fullUrl, method: .get).responseDecodable(of: Welcome.self) {
            response in
            switch response.result {
            case .success(let data):
                completion(data)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    
}
