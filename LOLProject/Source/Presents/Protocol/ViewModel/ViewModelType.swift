//
//  ViewModelType.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import Foundation

protocol ViewModelType {
    
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}
