//
//  AppDelegate.swift
//  AppLaunchDemo
//
//  Created by Kevin Gnadinger on 2/21/20.
//  Copyright © 2020 Kevin Gnadinger. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    instantiateMainViewController()
    return true
  }
}

private extension AppDelegate {
    private func instantiateMainViewController() {
      let mainViewController = RootViewController()
      let navigationConroller = UINavigationController(rootViewController: mainViewController)
      window = UIWindow(frame: UIScreen.main.bounds)
      window?.rootViewController = navigationConroller
      window?.makeKeyAndVisible()
    }
}


