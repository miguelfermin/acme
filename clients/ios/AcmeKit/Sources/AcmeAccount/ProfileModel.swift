//
//  ProfileModel.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import Foundation
import AcmeCore

/// Represents a user profile.
public final class ProfileModel: ObservableObject {
    @Published public private(set) var firstName = ""
    @Published public private(set) var lastName = ""
    @Published public private(set) var email = ""
    @Published public private(set) var phone = ""
    @Published public private(set) var street1 = ""
    @Published public private(set) var street2 = ""
    @Published public private(set) var city = ""
    @Published public private(set) var postalCode = ""
    @Published public private(set) var state = ""
    @Published public private(set) var country = ""
    
    init() {}
    
    public func updateToNoah() {
        firstName = "Noah"
        lastName = "Fermin"
        email = "noah.fermin@email.com"
        phone = "212 564 0092"
        
        Time.sleep(for: 4) {
            self.firstName = "Miguel"
            self.lastName = "Fermin"
            self.email = "miguel.fermin@email.com"
            self.phone = "440 342 1123"
        }
    }
}

extension ProfileModel {
    static public var sample: ProfileModel {
        let model = ProfileModel()
        model.firstName = "Miguel"
        model.lastName = "Fermin"
        model.email = "miguel.fermin@email.com"
        model.phone = "440 342 1123"
        return model
    }
}
