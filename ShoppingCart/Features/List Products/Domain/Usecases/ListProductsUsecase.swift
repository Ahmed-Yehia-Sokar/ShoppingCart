//
//  ListProductsUsecase.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ListProductsUsecase {
    // MARK: - Properties.
    
    private let productsRepository: ProductsRepositoryContract
    
    // MARK: - Methods.
    
    init(productsRepository: ProductsRepositoryContract) {
        self.productsRepository = productsRepository
    }
    
    func getProductsList() -> [String] {
        productsRepository.getProductsList()
    }
}
