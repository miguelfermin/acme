//
//  AccountModel.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import Foundation
import AcmeCore

/// Represents a single user account.
public final class AccountModel: ObservableObject {
    /// The account authentication status.
    ///  - note: Clients should only have a single instance and keep it in memory.
    @Published public private(set) var status = Status.unknown
    
    @Published public private(set) var loginModel = LoginModel()
    
    /// Instantiates new account model.
    public init() {
        // TODO: inject dependencies
    }
}

// MARK: - Public Actions
extension AccountModel {
    /// Checks user's authentication status and updates local status.
    public func checkAuthentication() {
        Task {
            await checkAuthentication()
        }
    }
    
    /// Checks user's authentication status, updates local status, and returns current status value.
    /// - Returns: The current authentication state.
    @MainActor
    public func checkAuthentication() async -> Status {
        await Time.sleep(for: 1)
        
        status = .authenticating
        
        await Time.sleep(for: 2)
        
        status = .unauthenticated(loginModel)
        
        await Time.sleep(for: 2)
        
        let currentStatus = Status.authenticated(ProfileModel.sample)
        status = currentStatus
        return currentStatus
    }
}

// MARK: - AccountModel+Status
extension AccountModel {
    /// Represents account authentication status.
    public enum Status {
        /// User is authenticated and has a profile.
        case authenticated(ProfileModel)
        /// User is NOT authenticated
        case unauthenticated(LoginModel)
        /// User is authenticating
        case authenticating
        /// Authentication status still unknown.
        case unknown
    }
}
