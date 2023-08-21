//
//  MovieRouter.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 19/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

class MovieRouter {

    weak var viewController: MovieViewController?
    weak var interactor: MovieInteractor?

    // MARK: - Navigation

    func navigateToSomewhere() {
        // NOTE: Teach the router how to navigate to another scene. Some examples follow:

        // 1. Trigger a storyboard segue
        // viewController?.performSegueWithIdentifier("ShowSomewhereScene", sender: nil)

        // 2. Present another view controller programmatically
        // viewController?.presentViewController(someWhereViewController, animated: true, completion: nil)

        // 3. Ask the navigation controller to push another view controller onto the stack
        // viewController?.navigationController?.pushViewController(someWhereViewController, animated: true)

        // 4. Present a view controller from a different storyboard
        // let storyboard = UIStoryboard(name: "OtherThanMain", bundle: nil)
        // let someWhereViewController = storyboard.instantiateInitialViewController() as! SomeWhereViewController
        // viewController?.navigationController?.pushViewController(someWhereViewController, animated: true)

        // 5. Present a view controller from a different storyboard the StartApps way (preferred)
        // let someWhereViewController = SomeWhereViewController.instantiate()
        // viewController?.navigationController?.pushViewController(someWhereViewController, animated: true)
    }

    // MARK: - Communication

    func passDataToNextScene(segue: UIStoryboardSegue) {
        // NOTE: Teach the router how to pass data to the next scene
        // if let destinationViewController = segue.destination as? SomewhereViewController {
        //     destinationViewController.interactor.something = interactor?.something
        // }
    }

}
