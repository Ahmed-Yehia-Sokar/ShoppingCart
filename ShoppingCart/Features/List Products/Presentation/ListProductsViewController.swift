//
//  ListProductsViewController.swift
//  ShoppingCart
//
//  Created by admin on 04/07/2022.
//

import UIKit

class ListProductsViewController: UIViewController {
    
    // MARK: - IBOutlets.
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties.
    
    private let listProductsViewModel = ListProductsViewModelProvider.getListProductsViewModel()
    
    // MARK: - Methods.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listProductsViewModel.getProductsListCompletionHandler = {
            self.tableView.reloadData()
        }
        
        listProductsViewModel.getProductsList()
    }
    
    // MARK: - IBActions.
    
    @IBAction func onShowCartButtonTapped(_ sender: UIButton) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "ListPurchasedProductsViewController")
        if let listPurchasedProductsViewController = viewController as? ListPurchasedProductsViewController {
            present(listPurchasedProductsViewController, animated: true, completion: nil)
        }
    }
}

// MARK: - UITableViewDataSource Methods.

extension ListProductsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listProductsViewModel.productsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "listProductTableCell", for: indexPath) as? ListProductTableCell else { return ListProductTableCell() }
        let productName = listProductsViewModel.productsList[indexPath.row]
        
        cell.configureCell(productName: productName) { selectedProduct in
            self.listProductsViewModel.addToCart(productName: selectedProduct)
        }
        return cell
    }
}
