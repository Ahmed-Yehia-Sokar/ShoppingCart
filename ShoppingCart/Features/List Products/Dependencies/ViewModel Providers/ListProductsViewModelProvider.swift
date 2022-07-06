//
//  ListProductsViewModelProvider.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ListProductsViewModelProvider {
    // MARK: - Methods.
    
    static func getListProductsViewModel() -> ListProductsViewModel {
        let listProductsUsecase = ListProductsUsecaseProvider.getListProductsUsecase()
        let addToCartUsecase = AddToCartUsecaseProvider.getAddToCartUsecase()
        
        return ListProductsViewModel(listProductsUsecase: listProductsUsecase,
                                     addToCartUsecase: addToCartUsecase)
    }
}
