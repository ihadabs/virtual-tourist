//
//  AppDelegate.swift
//  VirtualTourist
//
//  Created by Hadi Albinsaad on 23/10/2018.
//  Copyright © 2018 Hadi. All rights reserved.
//


// 1e5cb27bfbaea87df9516459ac4e535a
// fcc8bbef968c7ffc

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        DataController.sharedInstance.load()
        
        return true
    }

    func saveViewContext() {
        try? DataController.sharedInstance.viewContext.save()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        saveViewContext()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        saveViewContext()
    }
    
}

