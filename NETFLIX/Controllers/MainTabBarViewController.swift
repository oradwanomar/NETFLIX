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
        configure()
    }
    
    //MARK: Helpers
    
    
    func configure(){
        
        view.backgroundColor = .systemBackground
        
        let homeVC = setUpMainTabBarNavigationController(selectedImage: UIImage(systemName: "house.fill")!, unselectedImage: UIImage(systemName: "house")!, viewController: HomeViewController(), title: "Home")
        
        let upcomingVC = setUpMainTabBarNavigationController(selectedImage: UIImage(systemName: "play.circle.fill")!, unselectedImage: UIImage(systemName: "play.circle")!, viewController: UpcomingViewController(), title: "Coming Soon")
        
        let searchVC = setUpMainTabBarNavigationController(selectedImage: UIImage(named: "search_selected")!, unselectedImage: UIImage(named: "search_unselected")!, viewController: SearchViewController(), title: "Search")
        
        let downloadsVC = setUpMainTabBarNavigationController(selectedImage: UIImage(systemName: "arrow.down.to.line.circle.fill")!, unselectedImage: UIImage(systemName: "arrow.down.to.line.circle")!, viewController: DownloadsViewController(), title: "Downloads")
        
        viewControllers = [homeVC,upcomingVC,searchVC,downloadsVC]
        tabBar.tintColor = .label
        
        

    }
    
    func setUpMainTabBarNavigationController(selectedImage: UIImage,unselectedImage: UIImage,viewController: UIViewController,title:String)->UINavigationController {
        
        let nav = UINavigationController(rootViewController: viewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .label
        nav.title = title
        return nav
    }
}

