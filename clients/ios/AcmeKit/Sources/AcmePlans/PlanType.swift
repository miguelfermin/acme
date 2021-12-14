//
//  PlanType.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import Foundation

/// Represents a Plan type.
enum PlanType {
    case appliances
    case bundle
    case electronics
}

extension PlanType {
    /// Localized plan type title.
    var title: String {
        switch self {
        case .appliances:
            return "Appliances"
        case .bundle:
            return "Bundle"
        case .electronics:
            return "Electronics"
        }
    }
    
    /// Localized plan type description.
    var description: String {
        switch self {
        case .appliances:
            return "The appliances plan covers home appliances."
        case .bundle:
            return "The bundle plan includes appliances and electronics coverage."
        case .electronics:
            return "The electronics plan covers consumer electronics devices."
        }
    }
    
    /// System Image name.
    var image: String {
        switch self {
        case .appliances:
            return "square.stack.3d.up.fill"
        case .bundle:
            return "square.3.stack.3d.bottom.filled"
        case .electronics:
            return "square.stack.3d.up"
        }
    }
}
