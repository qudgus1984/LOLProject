//
//  AppCoordinator.swift
//  LOLProject
//
//  Created by 이병현 on 2023/01/29.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    enum InitalViewType {
        case nickname
        case main
    }
    
    var delegate: CoordinatorDidFinishDelegate?
    
    var presenter: UINavigationController
    
    private var window: UIWindow
        
    var childCoordinators: [Coordinator]
    
    init(window: UIWindow) {
        self.window = window
        self.childCoordinators = []
        self.presenter = UINavigationController()
    }
    
    func start(animated: Bool = true) {
        showInitialView(with: .nickname)
    }
    
    func showInitialView(with type: InitalViewType) {
        presenter = UINavigationController()
        
        switch type {
        case .nickname:
            showCheck(window: window)
        case .main:
            print("main")
        }
        
        self.window.makeKeyAndVisible()

        UIView.transition(with: self.window,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
    }
}

extension AppCoordinator: CheckNicknameCoordinatorContext { }
