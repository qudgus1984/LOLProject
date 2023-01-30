//
//  BaseCoordinatorContext.swift
//  LOLProject
//
//  Created by 이병현 on 2023/01/30.
//
import UIKit


protocol BaseCoordinatorContext: CoordinatorDidFinishDelegate {
    var delegate: CoordinatorDidFinishDelegate? { get set }
    
    var presenter: UINavigationController { get set }
    
    var childCoordinators: [Coordinator] { get set }
    
    func start(animated: Bool)
}
