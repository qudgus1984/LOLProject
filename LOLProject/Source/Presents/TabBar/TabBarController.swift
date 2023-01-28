//
//  TabBarViewController.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/25.
//

import UIKit

//class TabBarController: UITabBarController {
//    
//    enum TabBarIcon {
//        case main
//        case info
//        
//        var title: String {
//            switch self {
//            case .main:
//                return "홈"
//            case .info:
//                return "세부정보"
//            }
//        }
//        
//        var image: UIImage {
//            switch self {
//            case .main:
//                return UIImage(systemName: "house")!
//            case .info:
//                return UIImage(systemName: "calendar")!
//            }
//        }
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        tabBar.tintColor = .green4
//        tabBarController?.tabBar.backgroundColor = .white
//        tabBar.layer.borderWidth = 1.0
//        tabBar.layer.borderColor = UIColor.systemGray5.cgColor
//        
//        let firstVC = UINavigationController(
//            rootViewController: MainViewController()
//        )
//        firstVC.tabBarItem.selectedImage = TabBarIcon.main.image
//        firstVC.tabBarItem.title = TabBarIcon.main.title
//        
//        let secondVC = UINavigationController(
//            rootViewController: MainViewController()
//        )
//        secondVC.tabBarItem.selectedImage = TabBarIcon.info.image
//        secondVC.tabBarItem.title = TabBarIcon.info.title
//        
//        viewControllers = [firstVC, secondVC]
//    }
//}
