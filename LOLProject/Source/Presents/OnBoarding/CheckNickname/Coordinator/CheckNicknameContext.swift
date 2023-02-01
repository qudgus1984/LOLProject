//
//  CheckNicknameContext.swift
//  LOLProject
//
//  Created by 이병현 on 2023/02/01.
//

import UIKit


protocol CheckNicknameCoordinatorContext: BaseCoordinatorContext {
    func showCheck(window: UIWindow)
}


extension CheckNicknameCoordinatorContext {
    func showCheck(window: UIWindow) {
        let coordinator = CheckNicknameCoordinator(window: window)
        coordinator.delegate = self
        childCoordinators.append(coordinator)
        coordinator.start()
    }
}
