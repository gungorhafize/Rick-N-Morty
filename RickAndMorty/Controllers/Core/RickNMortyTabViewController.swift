//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Hafize on 16.10.2023.
//

import UIKit

final class RickNMortyTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs(){
        let charVc = RickNMortyCharViewController()
        let locationVc = RickNMortyLocationViewController()
        let episodeVc = RickNMortyEpisodeViewController()
        let settingsVc = RickNMortySettingsViewController()
        
        charVc.navigationItem.largeTitleDisplayMode = .automatic
        locationVc.navigationItem.largeTitleDisplayMode = .automatic
        episodeVc.navigationItem.largeTitleDisplayMode = .automatic
        settingsVc.navigationItem.largeTitleDisplayMode = .automatic
        
        
        let nav1 = UINavigationController(rootViewController: charVc)
        let nav2 = UINavigationController(rootViewController: locationVc)
        let nav3 = UINavigationController(rootViewController: episodeVc)
        let nav4 = UINavigationController(rootViewController: settingsVc)
        
        nav1.tabBarItem = UITabBarItem(title:"Character",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title:"Location",
                                       image: UIImage(systemName: "globe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title:"Episode",
                                       image: UIImage(systemName: "person"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title:"Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
        [nav1,nav2,nav3,nav4],
        animated: true)
    }


}

