//
//  AppDelegate.swift
//  EssentialApp
//
//  Created by chihyin wang on 2020/9/29.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        
        #if DEBUG
        configuration.delegateClass = DebuggingSceneDelegate.self
        #endif
        
        return configuration
    }

}

