//
//  HomeCollectionCells.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 21/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

class HomeCollectionCollectionViewCell: UICollectionViewCell {

    static let identifier = "HomeCollectionCollectionViewCell"

    
    let resourceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(resourceLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var displayedSomething: HomeScene.fetchHeroes.ViewModel.DisplayHero! {
        didSet {
            // Configure cell from object
            // iconImageView.image = displayedSomething.image
            resourceLabel.text = "label"
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }

}
