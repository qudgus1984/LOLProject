//
//  CheckNicknameViewModel.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import Foundation
import RxSwift
import RxCocoa

class CheckNicknameViewModel {
    internal var nickname = BehaviorRelay<String>(value: "")
    internal var nicknameValidation: BehaviorSubject<Bool> = BehaviorSubject(value: false)
    internal var inputName: BehaviorSubject<String> = BehaviorSubject(value: "")
    
    func nicknameValidationCheck(text: String) {
        inputName.onNext(text)
        
        if text.count >= 2 && text.count <= 10 {
            nicknameValidation.onNext(true)
        } else {
            nicknameValidation.onNext(false)
        }
    }
    
    func successNickname(nickname: String) {
        UserDefaults.standard.set(nickname, forKey: "nickname")
        print("\(UserDefaults.standard.string(forKey: "nickname"))")
    }
}
