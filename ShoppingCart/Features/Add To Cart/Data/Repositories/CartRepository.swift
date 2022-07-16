//
//  CartRepository.swift
//  ShoppingCart
//
//  Created by admin on 05/07/2022.
//

import Foundation

class CartRepository: CartRepositoryContract {
    // MARK: - Methods.
    
    func setCartExpiryDate(date: Date) {
        UserDefaults.standard.set(date, forKey: "CartExpiryDate")
    }
    
    func getCartExpiryDate() -> Date {
        guard let cartExpiryDate = UserDefaults.standard.object(forKey: "CartExpiryDate") as? Date else {
            return Date.now
        }
        
        return cartExpiryDate
    }
    
    func removeCartExpiryDate() {
        UserDefaults.standard.removeObject(forKey: "CartExpiryDate")
    }
    
    func getPurchasedProductsList() -> [String: Int] {
        guard let cartItems = UserDefaults.standard.dictionary(forKey: "Cart") as? [String: Int] else { return [:] }
        return cartItems
    }
    
    func addToCart(productName: String) {
        var cart = UserDefaults.standard.dictionary(forKey: "Cart") as? [String: Int] ?? [String: Int]()
        if let count = cart[productName] {
            cart[productName] = (count + 1)
        } else {
            cart[productName] = 1
        }
        print(cart)
        UserDefaults.standard.set(cart, forKey: "Cart")
    }
    
    func emptyCart() {
        UserDefaults.standard.removeObject(forKey: "Cart")
    }
}
