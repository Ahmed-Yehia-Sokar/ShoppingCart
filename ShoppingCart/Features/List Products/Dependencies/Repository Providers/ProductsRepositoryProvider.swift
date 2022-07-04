//
//  ProductsRepositoryProvider.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ProductsRepositoryProvider {
    // MARK: - Methods.
    
    static func getProductsRepository() -> ProductsRepository {
        return ProductsRepository()
    }
}
