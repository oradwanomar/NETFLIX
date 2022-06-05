//
//  ViewController.swift
//  NETFLIX
//
//  Created by Omar Ahmed on 03/06/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    func configure(){
        
    }
    
    func setUpMainTabBar(selectedImage: UIImage,unselectedImage: UIImage,viewController: UIViewController)->UINavigationController {
        
        let nav = UINavigationController(rootViewController: viewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .label
        return nav
    }
}

