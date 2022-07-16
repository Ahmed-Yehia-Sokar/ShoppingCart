//
//  ListPurchasedProductsViewModel.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import Foundation

class ListPurchasedProductsViewModel {
    // MARK: - Properties.
    
    private let listPurchasedProductsUsecase: ListPurchasedProductsUsecase
    var purchasedProducts = [String: Int]()
    var getPurchasedProductsListCompletionHandler: (() -> Void)?
    
    // MARK: - Methods.
    
    init(listPurchasedProductsUsecase: ListPurchasedProductsUsecase) {
        self.listPurchasedProductsUsecase = listPurchasedProductsUsecase
    }
    
    func getPurchasedProductsList() {
        purchasedProducts = listPurchasedProductsUsecase.getPurchasedProductsList()
        getPurchasedProductsListCompletionHandler?()
    }
}
