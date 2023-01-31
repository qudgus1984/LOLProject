//
//  CheckNicknameViewController.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit
import RxSwift
import RxCocoa

protocol CheckNicknameViewControllerDelegate {
    func check()
}

class CheckNicknameViewController: BaseViewController {
    
    var mainview = CheckNicknameView()
    var viewModel = CheckNicknameViewModel()
    var delegate: CheckNicknameViewControllerDelegate?
    let disposeBag = DisposeBag()
    
    override func loadView() {
        self.view = mainview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind()
    }
    
    override func configure() {
        mainview.nicknameTextfield.addTarget(self, action: #selector(inputNicknameTextFieldChanged), for: .editingChanged)
    }
    
    override func bind() {
        viewModel.nicknameValidation
            .asDriver(onErrorJustReturn: false)
            .map { $0 == true ? UIColor.green4 : UIColor.systemGray4 }
            .drive(mainview.searchIncludeView.rx.backgroundColor)
            .disposed(by: disposeBag)
        
        mainview.searchButton.rx.tap
            .withUnretained(self)
            .bind { (vc, _) in
                vc.mainview.searchIncludeView.backgroundColor == .green4 ? vc.success() : vc.showToast(message: "닉네임 똑바로입력해라.", font: UIFont.systemFont(ofSize: 10))
            }
    }
    
    @objc func inputNicknameTextFieldChanged() {
        guard let text = mainview.nicknameTextfield.text else { return }
        viewModel.nicknameValidationCheck(text: text)
    }
    
    func success() {
        guard let text = mainview.nicknameTextfield.text else { return }
        viewModel.successNickname(nickname: text)
    }
}
