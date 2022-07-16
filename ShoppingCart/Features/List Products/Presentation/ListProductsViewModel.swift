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
    private let addToCartUsecase: AddToCartUsecase
    var productsList = [String]()
    var getProductsListCompletionHandler: (() -> Void)?
    
    // MARK: - Methods.
    
    init(listProductsUsecase: ListProductsUsecase,
         addToCartUsecase: AddToCartUsecase) {
        self.listProductsUsecase = listProductsUsecase
        self.addToCartUsecase = addToCartUsecase
    }
    
    func getProductsList() {
        productsList = listProductsUsecase.getProductsList()
        getProductsListCompletionHandler?()
    }
    
    func addToCart(productName: String) {
        addToCartUsecase.addToCart(productName: productName)
    }
}
