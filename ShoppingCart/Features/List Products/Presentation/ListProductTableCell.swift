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
    
    // MARK: - Methods.
    
    func configureCell(productName: String) {
        self.productNameLabel.text = productName
    }
}
