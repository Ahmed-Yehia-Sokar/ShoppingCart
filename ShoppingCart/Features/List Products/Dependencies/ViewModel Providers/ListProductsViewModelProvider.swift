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
        
        return ListProductsViewModel(listProductsUsecase: listProductsUsecase)
    }
}
