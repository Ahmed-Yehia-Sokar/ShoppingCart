//
//  ListPurchasedProductTableCell.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import UIKit

class ListPurchasedProductTableCell: UITableViewCell {
    
    // MARK: - IBOutlets.
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    
    // MARK: - Methods.
    
    func configureCell(productName: String, quantity: Int) {
        productNameLabel.text = productName
        quantityLabel.text = "\(quantity)"
    }
}
