//
//  CartRepositoryProvider.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import Foundation

class CartRepositoryProvider {
    // MARK: - Methods.
    
    static func getCartRepository() -> CartRepository {
        return CartRepository()
    }
}
