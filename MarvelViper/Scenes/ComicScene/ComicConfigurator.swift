//
//  ComicConfigurator.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension ComicViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        ComicConfigurator.configure(viewController: self)
    }

    static func instantiate(comicId: Int) -> ComicViewController {
        let storyboard = UIStoryboard(name: "Comic", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ComicViewController
        viewController.interactor.comicId = comicId
        return viewController
    }

}

class ComicConfigurator {

    // MARK: - Configuration

    static func configure(viewController: ComicViewController) {

        let presenter = ComicPresenter()
        presenter.viewController = viewController

        let interactor = ComicInteractor()
        interactor.presenter = presenter

        let router = ComicRouter()
        router.viewController = viewController
        router.interactor = interactor

        viewController.interactor = interactor
        viewController.router = router
    }

}
