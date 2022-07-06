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
    
    func addToCart(product: Product) {
        cartRepository.addToCart(product: product)
    }
}
