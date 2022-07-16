//
//  ListPurchasedProductsViewModelProvider.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import Foundation

class ListPurchasedProductsViewModelProvider {
    // MARK: - Methods.
    
    static func getListPurchasedProductsViewModel() -> ListPurchasedProductsViewModel {
        let listPurchasedProductsUsecase = ListPurchasedProductsUsecaseProvider.getListPurchasedProductsUsecase()
        
        return ListPurchasedProductsViewModel(listPurchasedProductsUsecase: listPurchasedProductsUsecase)
    }
}
