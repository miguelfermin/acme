//
//  PlanDeviceRow.swift
//  Acme
//
//  Created by Miguel Fermin on 12/14/21.
//

import SwiftUI
import AcmeUI

struct PlanDeviceRow: View {
    var planDevice: PlanDevice
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Image(systemName: planDevice.type.imageName)
                    .imageScale(.large)
                Text(planDevice.nickName)
                    .font(.caption)
            }
            
            HStack {
                Text(planDevice.make)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(planDevice.model)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading) {
                Text("Purchased on April 26, 2019")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("Purchase Price: $799.00")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .applyCardStyle()
    }
}

struct PlanDeviceRow_Previews: PreviewProvider {
    static var previews: some View {
        PlanDeviceRow(planDevice: PlanDevice.sample)
    }
}
