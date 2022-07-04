//
//  ProductsRepository.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ProductsRepository: ProductsRepositoryContract {
    // MARK: - Methods.
    
    func getProductsList() -> [Product] {
        var result = [Product]()
        guard let productsList =  UserDefaults.standard.array(forKey: "Products") as? [[String: String]] else {
            return result
        }
        
        for productDic in productsList {
            let productId = productDic["productId"] ?? ""
            let productName = productDic["productName"] ?? ""
            let product = Product(productId: productId,
                                  productName: productName)
            
            result.append(product)
        }
        
        return result
    }
}
