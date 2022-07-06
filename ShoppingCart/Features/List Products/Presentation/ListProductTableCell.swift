//
//  ListProductTableCell.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import UIKit

class ListProductTableCell: UITableViewCell {
    // MARK: - IBOutlets.
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    // MARK: - Properties.
    
    private var product: Product?
    private var onAddToCartButtonTappedHandler: ((Product) -> Void)?
    
    // MARK: - Methods.
    
    func configureCell(product: Product,
                       onAddToCartButtonTappedHandler: @escaping ((Product) -> Void)) {
        self.product = product
        self.onAddToCartButtonTappedHandler = onAddToCartButtonTappedHandler
        self.productNameLabel.text = product.productName
    }
    
    // MARK: - IBActions.
    
    @IBAction func onAddToCartButtonTapped(_ sender: UIButton) {
        if let product = product {
            onAddToCartButtonTappedHandler?(product)
        }
    }
}
