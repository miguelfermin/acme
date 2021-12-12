//
//  AppTabNavigation.swift
//  Acme
//
//  Created by Miguel Fermin on 12/11/21.
//

import SwiftUI

struct AppTabNavigation: View {

    @State private var selection: Tab = .profile
    
    var body: some View {
        Text("Hello, World!")
    }
}

// MARK: - Tab
extension AppTabNavigation {
    enum Tab {
        case profile
        case claims
        case plans
        case support
        case billing
    }
}

// MARK: - Previews
struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}

/*
 
 Account
 
 Plans
 
 Claims
 
 Billing
 
 Support
 
 */
