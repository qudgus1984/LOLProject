//
//  BaseView.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/18.
//

import UIKit

class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        configureUI()
        setConstraints()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() { }
    func setConstraints() { }
    
    
}
