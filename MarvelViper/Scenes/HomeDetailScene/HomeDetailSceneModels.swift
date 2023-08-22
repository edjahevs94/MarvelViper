//
//  HomeDetailSceneModels.swift
//  MarvelViper
//
//  Created by EdgardVS on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import Foundation

enum HomeDetailSceneScene {
    
    enum fetchHero {
        
        struct Request {
        }
        struct Response {
            let hero: [Result]?
        }
        struct ViewModel {
            struct DisplayHero {
                let id: Int
                let name: String
                let description: String
                let photo: String
            }
            let displayedHeroes: [DisplayHero]
            
            
            
            
        }
        
    }
    
    enum AlertError {
        
        struct Response {
            let error: Error
        }
        struct ViewModel {
            let message: String
        }
        
    }

}
