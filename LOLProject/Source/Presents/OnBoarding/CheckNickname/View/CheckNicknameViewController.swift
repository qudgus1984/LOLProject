//
//  CheckNicknameViewController.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit
import RxSwift

class CheckNicknameViewController: BaseViewController {
    
    var mainview = CheckNicknameView()
    
    var viewModel = CheckNicknameViewModel()
    
    override func loadView() {
        self.view = mainview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
