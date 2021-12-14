//
//  PlanView.swift
//  
//
//  Created by Miguel Fermin on 12/13/21.
//

import SwiftUI
import AcmeUI

struct PlanView: View {
    var plan: Plan
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: plan.type.image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding(.trailing)
                
                VStack(alignment: .leading) {
                    Text(plan.type.description)
                        .font(.body)
                    Text("$123.54 **Every Month**")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Devices")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(DeviceType.allCases) { type in
                            DeviceTypeRow(type: type)
                        }
                    }
                }
            }
            
            Button("Edit Devices") {}
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle(plan.type.title)
        .toolbar {
            HStack {
                Button("Edit") {}
                Button("Delete") {}
            }
        }
    }
}

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView(plan: Plan.sample[2])
    }
}
