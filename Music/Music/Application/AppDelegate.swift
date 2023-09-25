//
//  AppDelegate.swift
//  Music
//
//  Created by Gleb Rasskazov on 24.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.rootViewController = UINavigationController(rootViewController: RegisterViewController())
            window.makeKeyAndVisible()
        }
        return true
    }
}
