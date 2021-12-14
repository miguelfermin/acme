//
//  Plan.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import Foundation

struct Plan: Identifiable, Hashable {
    var id: String
    var type: PlanType
    var products: [PlanProduct.ID] = []
}

extension Plan {
    static var sample: [Plan] {
        [
            Plan(id: "1", type: .electronics),
            Plan(id: "2", type: .appliances),
            Plan(id: "3", type: .bundle)
        ]
    }
}
