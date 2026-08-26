//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Anton Kruglov on 31.07.2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: scene)

        let feedViewController = FeedViewController()
        feedViewController.title = "User feed"
        feedViewController.view.backgroundColor = .systemBlue

        let profileViewController = ProfileViewController()
        profileViewController.title = "Profile"
        profileViewController.view.backgroundColor = .systemGray4
        
        let loginViewController = LogInViewController()
        loginViewController.view.backgroundColor = .white

        let tabBarController = UITabBarController()

        feedViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        profileViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        loginViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        feedViewController.tabBarItem.image = UIImage(systemName: "square.fill.text.grid.1x2")
        profileViewController.tabBarItem.image = UIImage(systemName: "person.circle")
        loginViewController.tabBarItem.image = UIImage(systemName: "person.crop.rectangle.stack")

        let controllers = [feedViewController, profileViewController,loginViewController]
        tabBarController.viewControllers = controllers.map {
            UINavigationController(rootViewController: $0)
        }

        tabBarController.selectedIndex = 2

        window.rootViewController = tabBarController
        window.makeKeyAndVisible()

        self.window = window
    }
}
