//
//  TabBarController.swift
//  NavigationApp
//
//  Created by Niyaz on 22.03.2023.
//

import UIKit

class TabBarController: UITabBarController {
    // Properties
    var firstTabNavigationController: UINavigationController!
    var secondTabNavigationController: UINavigationController!
    var thirdTabNavigationController: UINavigationController!
    
    // Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // Methods
    
    private func setupUI() {
        firstTabNavigationController = UINavigationController.init(rootViewController: FeedViewController())
        secondTabNavigationController = UINavigationController.init(rootViewController: ProfileViewController())
        thirdTabNavigationController = UINavigationController.init(rootViewController: PostViewController())
        
        self.viewControllers = [firstTabNavigationController, secondTabNavigationController, thirdTabNavigationController]
        
        let item1 = UITabBarItem(title: "Feed", image: UIImage(systemName: "newspaper"), tag: 0)
        let item2 = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        let item3 = UITabBarItem(title: "Post", image: UIImage(systemName: "camera"), tag: 2)
        
        
        firstTabNavigationController.tabBarItem = item1
        secondTabNavigationController.tabBarItem = item2
        thirdTabNavigationController.tabBarItem = item3
        
        UITabBar.appearance().tintColor = UIColor(red: 70/255.0, green: 158/255.0, blue: 93/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = UIColor(red: 138/255.0, green: 164/255.0, blue: 255/255.0, alpha: 1.0)
    }
    
    
}
