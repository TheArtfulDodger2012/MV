//
//  ContentView.swift
//  MV
//
//  Created by Ron Lane on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    @Bindable var model: ProductModel
    @State var product: String
    
    var body: some View {
        VStack {
            List {
                ForEach(model.products, id: \.id) { product in
                    Text(product.name)
                }
                .onDelete(perform: model.deleteProduct)
            }
            .frame(width: 300, height: 400)
            .scrollContentBackground(.hidden)
            
            Spacer()
            
            Text("\(model.products.count)")
                .foregroundStyle(.white)
                .fontWeight(.bold)
            
            Spacer()
            
            TextField("Enter product", text: $product)
                .onSubmit {
                    model.addProduct(product: product)
                    product = ""
                }
                .frame(width: 300, height: 100)
                .textFieldStyle(.roundedBorder)
                .padding(30)
        }
        .background(.orange)
        .padding()
    }
}

#Preview {
    ContentView(model: ProductModel(), product: "")
}
