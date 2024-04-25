//
//  MVApp.swift
//  MV
//
//  Created by Ron Lane on 4/25/24.
//

import SwiftUI

@main
struct MVApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(model: ProductModel(), product: "")
        }
    }
}
