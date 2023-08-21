//
//  ViewController.swift
//  MarvelViper
//
//  Created by Edgard Vargas on 19/08/23.
//

import UIKit

class ViewController: UIViewController {

    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.setTitle("Iniciar", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        assignbackground()
        setup()
    }
    
    func assignbackground(){
            let background = UIImage(named: "ImageBackground")
            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
            imageView.contentMode =  .scaleToFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }
    
    
    func setup() {
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        vc1.title = "Home"
        let vc2 = UINavigationController(rootViewController: MovieViewController())
        vc2.title = "Movie"
        tabBarVC.setViewControllers([vc1, vc2], animated: false)
        let images = ["house.fill", "popcorn.fill"]

        guard let items = tabBarVC.tabBar.items else {
           return
        }

        for i in 0..<items.count {
            items[i].image = UIImage(systemName: images[i])
        }
        tabBarVC.tabBar.backgroundColor = .white
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
    }
    
    


}

