//
//  LoginModel.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import Foundation
import AcmeCore

final public class LoginModel: ObservableObject {
    @Published private(set) var username = ""
    @Published private(set) var password = ""
    @Published private(set) var status = Status.signedOut
}

extension LoginModel {
    enum Status {
        /// User is signed out.
        case signedOut
        /// User is signing in.
        case signingIn
        /// Sign In failed
        case signInFailed(AcmeError)
    }
}
