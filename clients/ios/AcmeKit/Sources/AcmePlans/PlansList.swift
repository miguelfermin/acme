//
//  PlansList.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct PlansList: View {
    
    @EnvironmentObject private var model: PlansModel
    
    public init() {}
    
    public var body: some View {
        VStack {
            List {
                ForEach(model.plans) { plan in
                    NavigationLink(tag: plan.id, selection: $model.selectedPlanID) {
                        PlanView(plan: plan)
                    } label: {
                        PlanRow(plan: plan)
                    }
                    .onChange(of: model.selectedPlanID) { newValue in
                        guard let planID = newValue, let plan = model.plan(for: planID) else {
                            return
                        }
                        model.selectedPlanID = plan.id
                    }
                }
            }
        }
        .navigationTitle("Plans")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus.circle.fill")
            }
        }
    }
}

struct PlansList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlansList()
                .environmentObject(PlansModel())
        }
    }
}
