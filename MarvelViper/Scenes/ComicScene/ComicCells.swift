//
//  ComicCells.swift
//  MarvelViper
//
//  Created by EdgardVS on 24/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

class ComicTableViewCell: UITableViewCell {

    static let identifier = "ComicTableViewCell"

    // @IBOutlet weak var iconImageView: UIImageView!
    // @IBOutlet weak var titleLabel:    UILabel!
    // @IBOutlet weak var contentLabel:  UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Configure cell initial settings
    }

    var displayedSomething: ComicScene.___VARIABLE_useCase___.ViewModel.DisplayedSomething! {
        didSet {
            // Configure cell from object
            // iconImageView.image = displayedSomething.image
            // titleLabel.text = displayedSomething.title
            // contentLabel.text = displayedSomething.content
        }
    }

}