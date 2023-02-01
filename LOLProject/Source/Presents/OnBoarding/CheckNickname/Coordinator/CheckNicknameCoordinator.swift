//
//  CheckNicknameCoordinator.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit

class CheckNicknameCoordinator: Coordinator {
    private var window: UIWindow

    var delegate: CoordinatorDidFinishDelegate?

    var presenter: UINavigationController

    var childCoordinators: [Coordinator] = []

    private var navigationController: UINavigationController!

    /// initialziation
    init(window: UIWindow) {
        self.window = window
        self.childCoordinators = []
        self.presenter = UINavigationController()
    }

    func start(animated: Bool = true) {
        let viewcontroller = CheckNicknameViewController()
        viewcontroller.coordinator = self
        viewcontroller.coordinatorDelegate = self
        window.rootViewController = viewcontroller
    }
}

// MARK: App
extension CheckNicknameCoordinator : AppCoordinatorContext { }
