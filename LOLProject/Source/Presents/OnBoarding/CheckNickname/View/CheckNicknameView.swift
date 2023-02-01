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
    
    private var lolLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .green4
        label.text = "LOL기장, LOL에 진심인 사람들을 위하여"
        label.textAlignment = .center
        return label
    }()
    
    private var nicknameIncludeView: UIView = {
       let view = UIView()
        view.backgroundColor = .green2
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        return view
    }()
    
    internal var nicknameTextfield: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = " 소환사 이름을 입력해주세요. "
        return textfield
    }()
    
    internal var searchIncludeView: UIView = {
        let view = UIView()
         view.backgroundColor = .green2
         view.clipsToBounds = true
         view.layer.cornerRadius = 8
         return view
    }()
    
    internal var searchButton: UIButton = {
        let button = UIButton()
        button.setTitle("검색", for: .normal)
        return button
    }()
    
    override func configureUI() {
        [bgView, lolLabel, nicknameIncludeView, nicknameTextfield, searchIncludeView, searchButton].forEach {
            addSubview($0)
        }
    }
    override func setConstraints() {
        bgView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        lolLabel.snp.makeConstraints {
            $0.height.equalTo(120)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.top.equalTo(bgView.snp.top).offset(80)
        }
        
        nicknameIncludeView.snp.makeConstraints {
            $0.height.equalTo(44)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.top.equalTo(lolLabel.snp.bottom).offset(40)
        }
        
        nicknameTextfield.snp.makeConstraints {
            $0.edges.equalTo(nicknameIncludeView.snp.edges).inset(4)
        }
        
        searchIncludeView.snp.makeConstraints {
            $0.width.equalToSuperview().multipliedBy(0.25)
            $0.height.equalToSuperview().multipliedBy(0.06)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
        searchButton.snp.makeConstraints {
            $0.edges.equalTo(searchIncludeView.snp.edges).inset(0)
        }
    }
}
