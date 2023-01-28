//
//  UIViewController+Extension.swift
//  LOLProject
//
//  Created by 이동기 on 2023/01/26.
//

import UIKit

extension UIViewController {
    
    public func presentAlert(
        title: String,
        message: String? = nil,
        isIncludedCancel: Bool = false,
        okStyle: UIAlertAction.Style,
        okTitle: String,
        completion: ( (UIAlertAction) -> Void )? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if isIncludedCancel {
            let cancel = UIAlertAction(title: "취소", style: .cancel)
            alert.addAction(cancel)
        }
        
        let ok = UIAlertAction(title: okTitle, style: okStyle, handler: completion)
        
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    func addKeyboardNotifications(){
        // 키보드가 나타날 때 앱에게 알리는 메서드 추가
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification , object: nil)
        // 키보드가 사라질 때 앱에게 알리는 메서드 추가
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func removeKeyboardNotifications(){
        // 키보드가 나타날 때 앱에게 알리는 메서드 제거
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification , object: nil)
        // 키보드가 사라질 때 앱에게 알리는 메서드 제거
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ noti: NSNotification){
        // 키보드의 높이만큼 화면을 올려준다.
        if let keyboardFrame: NSValue = noti.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            self.view.frame.origin.y -= keyboardHeight
        }
    }

    // 키보드가 사라졌다는 알림을 받으면 실행할 메서드
    @objc func keyboardWillHide(_ noti: NSNotification){
        // 키보드의 높이만큼 화면을 내려준다.
        if let keyboardFrame: NSValue = noti.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            self.view.frame.origin.y += keyboardHeight
        }
    }

    
//    @objc func keyboardWillShow(_ sender:Notification){
//        self.view.frame.origin.y = -150
//    }
//
//    @objc func keyboardWillHide(_ sender:Notification){
//        self.view.frame.origin.y = 0
//    }
}

extension UIViewController {
    
    enum TransitionStyle {
        case present
        case presentNavigation
        case push
        case pop
        case presentFullScreen
        case presentOverFullScreen
        case presentCrossDisolve
        case rootNAVChange
        case rootVCChange
    }
    
    func transition<T: UIViewController>(_ viewController: T, transitionStyle: TransitionStyle = .present, handler: ( (T) -> Void)? = nil) {
        
        handler?(viewController)
        
        switch transitionStyle {
        case .present:
            self.present(viewController, animated: true)
            
        case .presentNavigation:
            let nav = UINavigationController(rootViewController: viewController)
            self.present(nav, animated: true)
            
        case .push:
            self.navigationController?.pushViewController(viewController, animated: true)
            
        case .pop:
            self.navigationController?.popViewController(animated: true)
            
        case .presentFullScreen:
            let nav = UINavigationController(rootViewController: viewController)
            nav.modalPresentationStyle = .fullScreen
            self.present(nav, animated: true)
            
        case .presentOverFullScreen:
            let nav = UINavigationController(rootViewController: viewController)
            nav.modalPresentationStyle = .overFullScreen
            self.present(nav, animated: true)
            
        case .presentCrossDisolve:
            viewController.modalPresentationStyle = .overFullScreen
            viewController.modalTransitionStyle = .crossDissolve
            self.present(viewController, animated: true)
            
        case .rootNAVChange:
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            let sceneDelegate = windowScene?.delegate as? SceneDelegate
            
            let vc = viewController
            UIView.transition(with: (sceneDelegate?.window)!, duration: 0.6, options: [.transitionCrossDissolve], animations: nil, completion: nil)
            let nav = UINavigationController(rootViewController: vc)
//            nav.transition(from: SetGenderViewController(), to: nav, duration: 2.0, animations: nil)
//            nav.transition(from: self, to: viewController, duration: 2.0, options: nil, animations: nil, completion: nil)
            sceneDelegate?.window?.rootViewController = nav
            sceneDelegate?.window?.makeKeyAndVisible()
            
        case .rootVCChange:
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            let sceneDelegate = windowScene?.delegate as? SceneDelegate

            let vc = viewController
            UIView.transition(with: (sceneDelegate?.window)!, duration: 0.6, options: [.transitionCrossDissolve], animations: nil, completion: nil)
            //            nav.transition(from: SetGenderViewController(), to: nav, duration: 2.0, animations: nil)
            //            nav.transition(from: self, to: viewController, duration: 2.0, options: nil, animations: nil, completion: nil)
            sceneDelegate?.window?.rootViewController = vc
            sceneDelegate?.window?.makeKeyAndVisible()
        }
    }
}
