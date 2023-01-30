//
//  AppCoordinator.swift
//  LOLProject
//
//  Created by 이병현 on 2023/01/29.
//

import UIKit

final class AppCoordinator: Coordinator {
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
        print("여기서 앱 시작했을 때 처리")
    }
}
