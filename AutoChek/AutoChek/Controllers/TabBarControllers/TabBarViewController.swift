//
//  TabBarViewController.swift
//  AutoChek
//
//  Created by mac on 12/7/21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: Create instance of viewControllers
    let homeViewController = ExploreViewController()
    let favoriteViewController = FavoriteViewController()
    let cartViewController = CartViewController()
    let notificationViewController = NotificationsViewController()
    let chatViewController = ChatsViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        self.setViewControllers([homeViewController, favoriteViewController, cartViewController, notificationViewController, chatViewController], animated: false)
        guard let items = self.tabBar.items else { return }
        let images = ["house.fill", "magnifyingglass","bag", "bell.fill", "message.fill"]
        for item in 0...4 {
          items[item].image = UIImage(systemName: images[item])
        }
        
        self.tabBar.tintColor = .gray
    }
    
    
}
