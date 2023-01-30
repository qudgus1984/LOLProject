//
//  CheckNicknameViewController.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit

class CheckNicknameViewController: BaseViewController {
    
    var mainview = CheckNicknameView()
    
    override func loadView() {
        self.view = mainview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
