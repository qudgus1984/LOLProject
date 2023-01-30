//
//  CheckNicknameView.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit
import SnapKit

class CheckNicknameView: BaseView {
    
    private var bgView: UIView = {
       let view = UIView()
        view.backgroundColor = .green1
        return view
    }()
    
    private var nicknameTextfield: UITextField = {
       let textfield = UITextField()
        textfield.placeholder = "소환사 이름을 입력해주세요."
        return textfield
    }()
    
    private var searchButton: UIButton = {
        let button = UIButton()
        button.setTitle("검색", for: .normal)
        return button
    }()
    
    override func configureUI() {
        [bgView, nicknameTextfield, searchButton].forEach {
            addSubview($0)
        }
    }
    override func setConstraints() {
        bgView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        nicknameTextfield.snp.makeConstraints {
            $0.height.equalToSuperview().multipliedBy(0.2)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(20)
            $0.top.equalTo(bgView).multipliedBy(0.3)
        }
        
        searchButton.snp.makeConstraints {
            $0.snp.makeConstraints {
                $0.top.equalTo(nicknameTextfield.snp.bottom).offset(20)
                $0.width.equalToSuperview().multipliedBy(0.25)
                $0.height.equalToSuperview().multipliedBy(0.1)
                $0.centerX.equalToSuperview()
            }
        }
    }
}
