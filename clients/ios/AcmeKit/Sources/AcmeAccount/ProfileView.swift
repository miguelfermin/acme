//
//  ProfileView.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct ProfileView: View {
    
    @ObservedObject private var model: ProfileModel
    
    public init(model: ProfileModel) {
        self.model = model
    }
    
    public var body: some View {
        ZStack {
            Color.pink
            VStack(alignment: .leading, spacing: 16) {
                Text(model.firstName)
                Text(model.lastName)
                Text(model.email)
                Text(model.phone)
                
                Button("Update to Noah") {
                    model.updateToNoah()
                }
            }
        }
        .navigationTitle("Profile View")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(model: ProfileModel.sample)
    }
}
