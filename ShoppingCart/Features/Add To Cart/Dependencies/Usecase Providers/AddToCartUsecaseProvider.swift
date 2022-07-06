//
//  AddToCartUsecaseProvider.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import Foundation

class AddToCartUsecaseProvider {
    // MARK: - Methods.
    
    static func getAddToCartUsecase() -> AddToCartUsecase {
        let cartRepository = CartRepositoryProvider.getCartRepository()
        
        return AddToCartUsecase(cartRepository: cartRepository)
    }
}
