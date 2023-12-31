//
//  HomeInteractor.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 19/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import Foundation

class HomeInteractor {

    var presenter: HomePresenter?

    // MARK: - Object variables

    // var loadAction: loadAction!

    // MARK: - Business logic

    func dofetchHeroes(request: HomeScene.fetchHeroes.Request) {
        // NOTE: Pass the result to the Presenter
        MarvelService.shared.getCharacters { result in
            let heroes = result.data.results
            self.presenter?.presentfetchHeroes(response: HomeScene.fetchHeroes.Response(heroes: heroes))
        }
        
//        do {
//            presenter?.presentfetchHeroes(response: HomeScene.fetchHeroes.Response())
//        } catch {
//            presenter?.presentAlertError(response: HomeScene.AlertError.Response(
//                error: error
//            ))
//        }
    }

}
