//
//  MainViewController.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/18.
//

import UIKit

final class MainViewController: UIViewController {

    private let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
