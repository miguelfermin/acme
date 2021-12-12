//
//  AppSidebarNavigation.swift
//  Acme
//
//  Created by Miguel Fermin on 12/11/21.
//

import SwiftUI
import AcmeAccount

struct AppSidebarNavigation: View {
    @EnvironmentObject private var model: ProfileModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AppSidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarNavigation()
            .environmentObject(ProfileModel.sample)
    }
}
