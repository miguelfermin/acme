//
//  AcmeApp.swift
//  Acme
//
//  Created by Miguel Fermin on 12/11/21.
//

import SwiftUI
import AcmeAccount

@main
struct AcmeApp: App {
    @StateObject private var model = AccountModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .accentColor(.mint)
                .environmentObject(model)
        }
    }
}
