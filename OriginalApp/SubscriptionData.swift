//
//  SubscriptionData.swift
//  OriginalApp
//
//  Created by 蒔田幸祐 on 2020/11/23.
//  Copyright © 2020 kousuke.makita. All rights reserved.
//

import UIKit
import Firebase

class SubscriptionData: NSObject {
    var id: String
    var name: String?
    var income: Int?
    var age: Int?
    var disposableIncome: Int?
    var usableMoney: Int?
    var date: Date?
    var subscription: [String] = []
    
    init(document: QueryDocumentSnapshot) {
        self.id = document.documentID
        
        let subscriptionDic = document.data()
        
        self.name = subscriptionDic["name"] as? String
        
        if let subscription = subscriptionDic["subscription"] as? [String] {
                   self.subscription = subscription
               }
               print("subscriptionDic[subscription]=", subscriptionDic["subscription"])
               print("self.subscription=",self.subscription)
        
        self.income = subscriptionDic["income"] as? Int
        
        self.age = subscriptionDic["age"] as? Int
        
        self.disposableIncome = subscriptionDic["disposableIncome"] as? Int
        
        self.usableMoney = subscriptionDic["usableMoney"] as? Int
        
        let timestamp = subscriptionDic["date"] as? Timestamp
        self.date = timestamp?.dateValue()
        
    }
}
