//
//  AppDelegate.swift
//  custom-url
//
//  Created by Anthony Elliott on 2/23/18.
//  Copyright © 2018 Pillar Technology. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        // Url: myapp://domain/mypath?arg1=value1&arg2=value2
        guard let scheme = url.scheme else {
            return false
        }
        guard let query = url.query else {
            return false
        }
        
        NotificationCenter.default.post(name:Notification.Name(rawValue:"MyNotification"),
                object: nil,
                userInfo: ["scheme": scheme, "query": query])
        
        return true
    }
}
