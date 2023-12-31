//
//  ComicPresenter.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import Foundation

class ComicPresenter {

    weak var viewController: ComicViewController?

    // MARK: - Presentation logic
    
    func presentfetchComic(response: ComicScene.fetchComic.Response) {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
        // NOTE: Remember to use workers if complex processing is required
        let displayedComic = response.comic?.map({ comic in
            ComicScene.fetchComic.ViewModel.DisplayComic(id: comic.id, name: comic.title, description: comic.description ?? "", photo: "\(comic.thumbnail.path).jpg")
        })
        viewController?.displayfetchComic(viewModel: ComicScene.fetchComic.ViewModel(displayComic: displayedComic ?? []))
    }
    
    func presentAlertError(response: ComicScene.AlertError.Response) {
        viewController?.displayAlertError(viewModel: ComicScene.AlertError.ViewModel(
            message: response.error.localizedDescription
        ))
    }

}
