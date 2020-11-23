//
//  TabBarController.swift
//  OriginalApp
//
//  Created by 蒔田幸祐 on 2020/11/21.
//  Copyright © 2020 kousuke.makita. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // タブアイコンの色
        self.tabBar.tintColor = UIColor(red: 0.5, green: 0.44, blue: 0.61, alpha: 1)
        // タブバーの背景色
        self.tabBar.barTintColor = UIColor(red: 0.42, green: 0.77, blue: 0.87, alpha: 1)
        // UITabBarControllerDelegateプロトコルのメソッドをこのクラスで処理する。
        self.delegate = self
    }
    
}
