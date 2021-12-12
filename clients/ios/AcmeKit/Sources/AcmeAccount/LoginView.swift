//
//  LoginView.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct LoginView: View {
    let model: LoginModel
    
    public init(model: LoginModel) {
        self.model = model
    }
    
    public var body: some View {
        ZStack {
            Color.mint
            Text("LoginView")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(model: LoginModel())
    }
}
