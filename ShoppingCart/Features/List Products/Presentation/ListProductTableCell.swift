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
    
    private var productName: String?
    private var onAddToCartButtonTappedHandler: ((String) -> Void)?
    
    // MARK: - Methods.
    
    func configureCell(productName: String,
                       onAddToCartButtonTappedHandler: @escaping ((String) -> Void)) {
        self.productName = productName
        self.onAddToCartButtonTappedHandler = onAddToCartButtonTappedHandler
        self.productNameLabel.text = productName
    }
    
    // MARK: - IBActions.
    
    @IBAction func onAddToCartButtonTapped(_ sender: UIButton) {
        if let productName = productName {
            onAddToCartButtonTappedHandler?(productName)
        }
    }
}
