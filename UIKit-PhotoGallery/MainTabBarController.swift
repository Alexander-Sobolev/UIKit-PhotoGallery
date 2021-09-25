//
//  MainTabBarController.swift
//  UIKit-PhotoGallery
//
//  Created by Alexander Sobolev on 23.09.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9484767247, green: 1, blue: 1, alpha: 1)
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            createNavController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photos")),
            createNavController(rootViewController: ViewController(), title: "Favourites", image: #imageLiteral(resourceName: "heart"))
        ]
    }
    
    private func createNavController(rootViewController: UIViewController, title: String, image: UIImage) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
}
