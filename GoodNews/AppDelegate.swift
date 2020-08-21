//
//  AppDelegate.swift
//  GoodNews
//
//  Created by Bharat Khatke on 21/08/20.
//  Copyright © 2020 Bharat Khatke. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //Below line is very Important
        let navigationAppearance = UINavigationBar.appearance()
        
        navigationAppearance.barTintColor = UIColor(displayP3Red: 47/255, green: 54/255, blue: 64/255, alpha: 1.0)
        
        navigationAppearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        navigationAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        

   
        return true
    }
    
    

}

