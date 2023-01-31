//
//  CheckNicknameCoordinator.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit

protocol CheckNicknameCoordinatorDelegate {
    func didSearchButtonClicked(_ coordinator: CheckNicknameCoordinator)
}

class CheckNicknameCoordinator: Coordinator, CheckNicknameViewControllerDelegate {
//    var delegate: CoordinatorDidFinishDelegate?
//
//    var presenter: UINavigationController
//
//
//    var childCoordinators: [Coordinator] = []
//    var checkDelegate: CheckNicknameCoordinatorDelegate?
//
//    private var navigationController: UINavigationController!
//
//    init(navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//
//    func start(animated: Bool) {
//        let viewController = CheckNicknameViewController()
//        viewController.delegate = self
//
//        self.navigationController.viewControllers = [viewController]
//    }
//
//    func check() {
//        self.checkDelegate?.didSearchButtonClicked(self)
//    }
}
