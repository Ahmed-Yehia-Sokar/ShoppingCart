//
//  ProductsRepository.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

class ProductsRepository: ProductsRepositoryContract {
    // MARK: - Methods.
    
    func addProductsList() {
        let products = [
            "MacBook",
            "iPhone",
            "Coffee",
            "Smart Watch",
            "Pen",
            "Note Book",
            "Chair",
            "table",
            "Bottle",
            "Watermelon",
            "Apple",
            "Fire Alarm",
            "Smart Tv",
            "PS4",
            "PS5",
            "Cup",
            "Tea",
            "Sugar",
            "Airpods",
            "Last item 😂",
        ]
        
        UserDefaults.standard.set(products, forKey: "Products")
    }
    
    func getProductsList() -> [String] {
        var result = [String]()
        guard let productsList = UserDefaults.standard.array(forKey: "Products") as? [String] else {
            return result
        }
        
        productsList.forEach { productName in
            result.append(productName)
        }
        
        return result
    }
}
