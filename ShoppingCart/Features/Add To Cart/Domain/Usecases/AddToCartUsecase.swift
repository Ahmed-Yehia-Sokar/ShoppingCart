//
//  AddToCartUsecase.swift
//  ShoppingCart
//
//  Created by admin on 05/07/2022.
//

import Foundation

class AddToCartUsecase {
    // MARK: - Properties.
    
    private let cartRepository: CartRepositoryContract
    
    // MARK: - Methods.
    
    init(cartRepository: CartRepositoryContract) {
        self.cartRepository = cartRepository
    }
    
    func addToCart(productName: String) {
        let purchasedProducts = cartRepository.getPurchasedProductsList()
        
        if purchasedProducts.isEmpty {
            let calendar = Calendar.current
            var dayComponent = DateComponents()
            dayComponent.day = 3
            
            if let cartExpiryDate = calendar.date(byAdding: dayComponent, to: Date()) {
                cartRepository.setCartExpiryDate(date: cartExpiryDate)
            }
        }
        
        cartRepository.addToCart(productName: productName)
    }
}
