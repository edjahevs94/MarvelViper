//
//  HomeCells.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 19/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit
import SDWebImage

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeTableViewCell"
    
   
    let resourceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    let resourceImage: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true // par que se pegue a los limites de la celda
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(resourceImage)
        contentView.addSubview(resourceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    var heroe: HomeScene.fetchHeroes.ViewModel.DisplayHero! {
        didSet {
            // Configure cell from object

            resourceLabel.text = heroe.name
            resourceImage.sd_setImage(with: URL(string: heroe.photo))
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        resourceLabel.text = nil
        resourceImage.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        
        resourceImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        resourceImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        resourceImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        resourceImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        
        resourceLabel.leadingAnchor.constraint(equalTo: resourceImage.trailingAnchor, constant: 50).isActive = true
        resourceLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
    }
    
    
}
