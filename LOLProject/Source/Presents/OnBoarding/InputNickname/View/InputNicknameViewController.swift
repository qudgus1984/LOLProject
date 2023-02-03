//
//  InputNicknameViewController.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit
import RxSwift
import RxCocoa

protocol SuccessButtonProtocol {
    func tapSuccessButton()
}

class InputNicknameViewController: BaseViewController {
    
    var mainview = InputNicknameView()
    var viewModel = InputNicknameViewModel()
    
    // variable
    weak var coordinator: CheckNicknameCoordinator?
    
    override func loadView() {
        self.view = mainview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind()
    }
    
    override func configure() {
        mainview.searchButton.addTarget(self, action: #selector(okButtonClicked), for: .touchUpInside)
    }
    
    override func bind() {

    }
    
    @objc
    func okButtonClicked() {
        
    }
}
