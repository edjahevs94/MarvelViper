//
//  ComicViewController.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

class ComicViewController: UIViewController {

    var interactor: ComicInteractor!
    var router: ComicRouter!

    // MARK: - Object variables

    // NOTE: Only store objects here if required
    private var comic: [ComicScene.fetchComic.ViewModel.DisplayComic] = []

    // MARK: - Inteface objects
    let resourceDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 15
      
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    let resourceTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    
    let resourceImage: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        //imageView.clipsToBounds = true // par que se pegue a los limites de la celda
        return imageView
    }()
   

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(resourceTitle)
        view.addSubview(resourceImage)
        view.addSubview(resourceDescription)
        
        setupView()
        dofetchComic()
    }

    func setupView() {
        // NOTE: Setup the view on load
        //resourceTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true
        resourceTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        //resourceTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resourceTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        resourceTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        
        resourceImage.topAnchor.constraint(equalTo: resourceTitle.bottomAnchor, constant: 15).isActive = true
        resourceImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        resourceImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        resourceImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        resourceDescription.topAnchor.constraint(equalTo: resourceImage.bottomAnchor, constant: 40).isActive = true
        resourceDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
        resourceDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35).isActive = true
        
    }

    // MARK: - Interaction handling

    // @IBAction func buttonPressed() { ...

    // MARK: - Event handling

    func dofetchComic() {
        // NOTE: Ask the Interactor to do some work
        // NOTE: Start loading animation here
        interactor.dofetchComic(request: ComicScene.fetchComic.Request())
    }

    // MARK: - Display logic
    
    func displayfetchComic(viewModel: ComicScene.fetchComic.ViewModel) {
        // NOTE: Stop loading animation here
        // NOTE: Display the result from the Presenter
        self.comic = viewModel.displayComic
        self.resourceTitle.text = comic[0].name
      
        if comic[0].description != "" {
            self.resourceDescription.text = comic[0].description
        } else {
            self.resourceDescription.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        }
        
        self.resourceImage.sd_setImage(with: URL(string: comic[0].photo))
        
    }
    
    func displayAlertError(viewModel: ComicScene.AlertError.ViewModel) {
        // NOTE: Stop loading animation here
        let alert = UIAlertController(title: "Error", message: viewModel.message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }

}