//
//  ComicInteractor.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import Foundation

class ComicInteractor {

    var presenter: ComicPresenter?

    // MARK: - Object variables

    // var loadAction: loadAction!
    var comicId: Int?

    // MARK: - Business logic

    func dofetchComic(request: ComicScene.fetchComic.Request) {
        // NOTE: Pass the result to the Presenter
      
        MarvelService.shared.getComic(comicId: comicId!) { result in
            let comic = result.data.results
            self.presenter?.presentfetchComic(response: ComicScene.fetchComic.Response(comic: comic))
        }
    }
    
    func dofetchCharacters(request: ComicScene.fetchCharacter.Request) {
        
        MarvelService.shared.getComicCharacters(comicId: comicId!) { result in
            let characters = result.data.results
            print("=== \(characters)")
        }
        
    }

}
