//
//  WalletIocContainer.swift
//  Bytom-Mobile-Wallet-iOS
//
//  Created by 曲终叶落 on 2018/5/30.
//  Copyright © 2018年 曲终叶落. All rights reserved.
//

import Foundation
import Swinject

class WalletIocContainer {
    static func register(container: Container) {
        container.register(WalletRepository.self) { _ in WalletRepository() }
        container.register(WalletController.self) { _ in WalletController(walletRepo: container.resolve(WalletRepository.self)! )}
    }
}
