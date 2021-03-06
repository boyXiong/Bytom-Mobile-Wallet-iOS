//
//  UIViewController+IView.swift
//  Bytom-Mobile-Wallet-iOS
//
//  Created by 曲终叶落 on 2018/5/29.
//  Copyright © 2018年 曲终叶落. All rights reserved.
//

import Foundation
import Toast_Swift

extension UIViewController: UIInterface {
    func alertNetworkError() {
        toast("无法连接网络，请重试")
    }
    
    func toast(_ string: String) {
        view.makeToast(string, duration: 2.0, position: .center, title: nil, image: nil, style: ToastManager.shared.style, completion: nil)
    }
    
    func showActivityIndicator() {
        view.makeToastActivity(.center)
    }
    
    func hideActivityIndicator() {
        view.hideToastActivity()
    }
    
    func openBrowserVC(title: String?, url: URL) {
        navigationController?.pushViewController(BrowserVC.init(title: title, url: url), animated: true)
    }
}
