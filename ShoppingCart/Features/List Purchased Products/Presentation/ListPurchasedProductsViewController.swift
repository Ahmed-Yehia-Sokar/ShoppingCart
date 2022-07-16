//
//  ListPurchasedProductsViewController.swift
//  ShoppingCart
//
//  Created by admin on 06/07/2022.
//

import UIKit

class ListPurchasedProductsViewController: UIViewController {

    // MARK: - IBOutlets.
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties.
    
    private let listPurchasedProductsViewModel = ListPurchasedProductsViewModelProvider.getListPurchasedProductsViewModel()
    
    // MARK: - Methods.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listPurchasedProductsViewModel.getPurchasedProductsListCompletionHandler = {
            self.tableView.reloadData()
        }
        listPurchasedProductsViewModel.getPurchasedProductsList()
    }
    
    // MARK: - IBActions.
    
    @IBAction func onCloseButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

// MARK: - UITableViewDataSource Methods.

extension ListPurchasedProductsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listPurchasedProductsViewModel.purchasedProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "listPurchasedProductTableCell", for: indexPath) as? ListPurchasedProductTableCell else { return ListPurchasedProductTableCell() }
        let productName = String(Array(listPurchasedProductsViewModel.purchasedProducts.keys)[indexPath.row])
        let quantity = Int(Array(listPurchasedProductsViewModel.purchasedProducts.values)[indexPath.row])
        
        cell.configureCell(productName: productName, quantity: quantity)
        return cell
    }
}
