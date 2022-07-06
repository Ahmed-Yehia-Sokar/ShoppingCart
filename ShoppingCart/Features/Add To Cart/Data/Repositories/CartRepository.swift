//
//  CartRepository.swift
//  ShoppingCart
//
//  Created by admin on 05/07/2022.
//

import Foundation

class CartRepository: CartRepositoryContract {
    // MARK: - Methods.
    
    func addToCart(product: Product) {
        var cart = UserDefaults.standard.array(forKey: "Cart") as? [String] ?? [String]()
        
        if !cart.contains(product.productName) {
            cart.append(product.productName)
        }
                
        UserDefaults.standard.set(cart, forKey: "Cart")
    }
}
