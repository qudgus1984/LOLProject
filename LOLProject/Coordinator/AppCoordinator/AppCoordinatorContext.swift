//
//  AppCoordinatorContext.swift
//  LOLProject
//
//  Created by 이병현 on 2023/02/01.
//

import UIKit

protocol AppCoordinatorContext: BaseCoordinatorContext {
    func showInitialView(with type: AppCoordinator.InitalViewType)
}

extension AppCoordinatorContext {
    func showInitialView(with type: AppCoordinator.InitalViewType) {
        
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let sceneDelegate = windowScene?.delegate as? SceneDelegate
        
        sceneDelegate?.appCoordinator.showInitialView(with: type)
    }
}
