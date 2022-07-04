//
//  ProductsRepositoryContract.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import Foundation

protocol ProductsRepositoryContract {
    func getProductsList() -> [Product];
}
