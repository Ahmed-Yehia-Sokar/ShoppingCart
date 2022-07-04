//
//  ListProductsUsecaseProvider.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ListProductsUsecaseProvider {
    // MARK: - Methods.
    
    static func getListProductsUsecase() -> ListProductsUsecase {
        let productsRepository = ProductsRepositoryProvider.getProductsRepository()
        
        return ListProductsUsecase(productsRepository: productsRepository)
    }
}
