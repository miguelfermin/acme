//
//  PlanRow.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import SwiftUI

struct PlanRow: View {
    var plan: Plan
    
    var body: some View {
        HStack {
            Image(systemName: plan.type.image)
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.trailing)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(plan.type.title)
                    .font(.headline)
                Text("\(plan.products.count) devices")
                    .font(.subheadline)
            }
        }
    }
}

struct PlanRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading, spacing: 16) {
            Divider()
            PlanRow(plan: Plan.sample[0])
            Divider()
            PlanRow(plan: Plan.sample[1])
            Divider()
            PlanRow(plan: Plan.sample[2])
            Divider()
        }.padding()
    }
}
