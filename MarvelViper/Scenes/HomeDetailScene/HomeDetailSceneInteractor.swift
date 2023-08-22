//
//  HomeDetailSceneInteractor.swift
//  MarvelViper
//
//  Created by EdgardVS on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import Foundation

class HomeDetailSceneInteractor {

    var presenter: HomeDetailScenePresenter?

    // MARK: - Object variables

    // var loadAction: loadAction!
    var heroId: Int?
    
    

    // MARK: - Business logic

    func dofetchHero(request: HomeDetailSceneScene.fetchHero.Request) {
        // NOTE: Pass the result to the Presenter
        
        MarvelService.shared.getCharacter(heroId: heroId!) { result in
            let hero = result.data.results
            self.presenter?.presentfetchHero(response: HomeDetailSceneScene.fetchHero.Response(hero: hero))
           
        }
        
//        do {
//            presenter?.presentfetchHero(response: HomeDetailSceneScene.fetchHero.Response())
//        } catch {
//            presenter?.presentAlertError(response: HomeDetailSceneScene.AlertError.Response(
//                error: error
//            ))
//        }
    }

}
