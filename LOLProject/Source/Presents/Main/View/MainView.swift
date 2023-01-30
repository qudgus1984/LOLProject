//
//  MainView.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/25.
//

import UIKit
import SnapKit

class MainView: BaseView {
    
    private let backView: UIView = {
       let view = UIView()
        view.backgroundColor = .green2
        return view
    }()
    
    
    override func configureUI() {
        self.addSubview(backView)
    }
    
    override func setConstraints() {
        
        backView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
