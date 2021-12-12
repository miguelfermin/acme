//
//  AcmeError.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import Foundation

/// Represents an acme core error.
public struct AcmeError: Error {
    /// The error code.
    public let code: Int
    /// The error localized description.
    public let description: String
    
    /// Instantiates new AcmeError.
    /// - Parameters:
    ///   - code: The error code.
    ///   - description: The error localized description.
    public init(code: Int, description: String) {
        self.code = code
        self.description = description
    }
}
