//
//  ListPurchasedProductsUsecase.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import Foundation

class ListPurchasedProductsUsecase {
    // MARK: - Properties.
    
    private let cartRepository: CartRepositoryContract
    
    // MARK: - Methods.
    
    init(cartRepository: CartRepositoryContract) {
        self.cartRepository = cartRepository
    }
    
    func getPurchasedProductsList() -> [String: Int] {
        let cartExpiryDate = cartRepository.getCartExpiryDate()
        let currentDate = Date.now
        
        if currentDate >= cartExpiryDate {
            cartRepository.emptyCart()
            cartRepository.removeCartExpiryDate()
            
            return [:]
        }
        
        return self.cartRepository.getPurchasedProductsList()
    }
}
