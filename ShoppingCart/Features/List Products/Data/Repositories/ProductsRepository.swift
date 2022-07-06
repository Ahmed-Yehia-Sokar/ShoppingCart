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
            "1": "MacBook",
            "2": "iPhone",
            "3": "Coffee",
            "4": "Smart Watch",
            "5": "Pen",
            "6": "Note Book",
            "7": "Chair",
            "8": "table",
            "9": "Bottle",
            "10": "Watermelon",
            "11": "Apple",
            "12": "Fire Alarm",
            "13": "Smart Tv",
            "14": "PS4",
            "15": "PS5",
            "16": "Cup",
            "17": "Tea",
            "18": "Sugar",
            "19": "Airpods",
            "20": "Last item 😂",
        ]
        
        UserDefaults.standard.set(products, forKey: "Products")
    }
    
    func getProductsList() -> [Product] {
        var result = [Product]()
        guard let productsList = UserDefaults.standard.dictionary(forKey: "Products") as? [String: String] else {
            return result
        }
        
        for (key, value) in productsList {
            let product = Product(productId: key,
                                  productName: value)
            
            result.append(product)
        }
        
        return result
    }
}
