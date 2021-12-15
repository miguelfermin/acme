//
//  PlanDevice.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import Foundation

/// Represents a product that's included in a user's plan.
struct PlanDevice: Identifiable, Hashable {
    var id: String
    var type: DeviceType
    var nickName: String
    var model: String
    var make: String
    var purchaseDate: Date
    var purchasePrice: Double
}

extension PlanDevice {
    static let sample = PlanDevice(
        id: "1",
        type: .smartphone,
        nickName: "My iPhone",
        model: "iPhone 13",
        make: "Apple",
        purchaseDate: Date(),
        purchasePrice: 7.99
    )
}
