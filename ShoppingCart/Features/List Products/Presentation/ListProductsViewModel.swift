//
//  ListProductsViewModel.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ListProductsViewModel {
    // MARK: - Properties.
    
    private let listProductsUsecase: ListProductsUsecase
    var productsList = [Product]()
    var getProductsListCompletionHandler: (() -> Void)?
    
    // MARK: - Methods.
    
    init(listProductsUsecase: ListProductsUsecase) {
        self.listProductsUsecase = listProductsUsecase
    }
    
    func getProductsList() {
        productsList = listProductsUsecase.getProductsList()
        getProductsListCompletionHandler?()
    }
}
