//
//  ProductModel.swift
//  MV
//
//  Created by Ron Lane on 4/25/24.
//

import Foundation

struct Product {
    let id = UUID()
    let name: String
}

@Observable
class ProductModel {
    var products: [Product]
    
    init() {
        self.products = [
            Product(name: "dish" ),
            Product(name: "bowl" ),
            Product(name: "fork" ),
            Product(name: "spoon"),
            Product(name: "cup"  )
        ]
    }
    
    func addProduct(product: String) {
        products.append(Product(name: product))
    }
    
    func deleteProduct(at offsets: IndexSet) {
        products.remove(atOffsets: offsets)
    }
}
