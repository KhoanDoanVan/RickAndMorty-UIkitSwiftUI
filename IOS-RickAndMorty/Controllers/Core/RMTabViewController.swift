//
//  ViewController.swift
//  IOS-RickAndMorty
//
//  Created by Đoàn Văn Khoan on 15/7/24.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    func setUpTabs() {
        let characterVS = RMCharacterViewController()
        let locationVS = RMLocationViewController()
        let episodeVS = RMEpisodeViewController()
        let settingsVS = RMSettingsViewController()
        
        characterVS.navigationItem.largeTitleDisplayMode = .automatic
        locationVS.navigationItem.largeTitleDisplayMode = .automatic
        episodeVS.navigationItem.largeTitleDisplayMode = .automatic
        settingsVS.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: characterVS)
        let nav2 = UINavigationController(rootViewController: locationVS)
        let nav3 = UINavigationController(rootViewController: episodeVS)
        let nav4 = UINavigationController(rootViewController: settingsVS)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        /// inherited from UITabBarController
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true)
        }
}

