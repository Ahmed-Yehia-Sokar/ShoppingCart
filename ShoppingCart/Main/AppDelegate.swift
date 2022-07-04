//
//  AppDelegate.swift
//  ShoppingCart
//
//  Created by admin on 03/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Properties
    
    var window: UIWindow?
    
    // MARK: - Methods
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()
        
        let productsList = [
            [
                "productId": "1",
                "productName": "MacBook"
            ],
            [
                "productId": "2",
                "productName": "iPhone"
            ],
            [
                "productId": "3",
                "productName": "Coffee"
            ],
            [
                "productId": "4",
                "productName": "Smart Watch"
            ],
            [
                "productId": "5",
                "productName": "Pen"
            ]
        ]
        
        UserDefaults.standard.set(productsList, forKey: "Products")
        
        return true
    }
}

