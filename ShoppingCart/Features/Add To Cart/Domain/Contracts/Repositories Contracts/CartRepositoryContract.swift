//
//  CartRepositoryContract.swift
//  ShoppingCart
//
//  Created by admin on 05/07/2022.
//

import Foundation

protocol CartRepositoryContract {
    func setCartExpiryDate(date: Date);
    func getCartExpiryDate() -> Date;
    func removeCartExpiryDate();
    func getPurchasedProductsList() -> [String: Int];
    func addToCart(productName: String);
    func emptyCart();
}
