//
//  PlansModel.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import Foundation

public final class PlansModel: ObservableObject {
    @Published var plans: [Plan] = []
    @Published var selectedPlanID: Plan.ID?
    
    public init() {
        loadData()
    }
}

extension PlansModel {
    func loadData() {
        plans = Plan.sample
    }
    
    func plan(for id: Plan.ID) -> Plan? {
        plans.first(where: { $0.id == id })
    }
}

// MARK: - Previews Support
extension PlansModel {
    static var sample: PlansModel {
        let m = PlansModel()
        m.plans = Plan.sample
        return m
    }
}
