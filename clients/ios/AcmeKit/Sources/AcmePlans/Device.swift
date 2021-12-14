//
//  Device.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import Foundation

/// Represents a product that can be added to a Plan.
struct Device: Identifiable, Hashable {
    var id: String
    var type: DeviceType
}
