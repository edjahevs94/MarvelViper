//
//  HomeDetailSceneConfigurator.swift
//  MarvelViper
//
//  Created by EdgardVS on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension HomeDetailSceneViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        HomeDetailSceneConfigurator.configure(viewController: self)
    }

    static func instantiate(heroId: Int) -> HomeDetailSceneViewController {
        let storyboard = UIStoryboard(name: "HomeDetail", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! HomeDetailSceneViewController
        viewController.interactor.heroId = heroId
        return viewController
    }

}

class HomeDetailSceneConfigurator {

    // MARK: - Configuration

    static func configure(viewController: HomeDetailSceneViewController) {

        let presenter = HomeDetailScenePresenter()
        presenter.viewController = viewController

        let interactor = HomeDetailSceneInteractor()
        interactor.presenter = presenter

        let router = HomeDetailSceneRouter()
        router.viewController = viewController
        router.interactor = interactor

        viewController.interactor = interactor
        viewController.router = router
    }

}