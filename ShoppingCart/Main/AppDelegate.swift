//
//  AppDelegate.swift
//  ShoppingCart
//
//  Created by admin on 03/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Properties.
    
    var window: UIWindow?
    
    // MARK: - Methods.
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let productsRepository = ProductsRepositoryProvider.getProductsRepository()
        productsRepository.addProductsList()
                
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()

        return true
    }
}

