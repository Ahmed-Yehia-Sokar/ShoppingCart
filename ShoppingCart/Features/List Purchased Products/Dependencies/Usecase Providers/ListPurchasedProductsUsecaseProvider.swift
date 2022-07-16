//
//  ListPurchasedProductsUsecaseProvider.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import Foundation

class ListPurchasedProductsUsecaseProvider {
    // MARK: - Methods.
    
    static func getListPurchasedProductsUsecase() -> ListPurchasedProductsUsecase {
        let cartRepository = CartRepositoryProvider.getCartRepository()
        
        return ListPurchasedProductsUsecase(cartRepository: cartRepository)
    }
}
