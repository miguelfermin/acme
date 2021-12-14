//
//  ContentView.swift
//  Acme
//
//  Created by Miguel Fermin on 12/11/21.
//

import SwiftUI
import AcmeAccount

struct ContentView: View {
    @EnvironmentObject private var model: AccountModel
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    var body: some View {
        switch model.status {
        case .authenticated(let profile):
            contentView
                .environmentObject(profile)
            
        case .unauthenticated(let model):
            LoginView(model: model)
            
        case .authenticating:
            Text("Authentication in progress.....")
            
        case .unknown:
            Text("Unknown, Check Authentication")
                .onAppear {
                    model.checkAuthentication()
                }
        }
    }
    
    @ViewBuilder
    private var contentView: some View {
        if horizontalSizeClass == .compact {
            AppTabNavigation()
        } else {
            AppSidebarNavigation()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AccountModel())
    }
}
