//
//  DeviceTypeRow.swift
//  
//
//  Created by Miguel Fermin on 12/14/21.
//

import SwiftUI
import AcmeUI

struct DeviceTypeRow: View {
    var type: DeviceType
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: type.imageName)
                .imageScale(.large)
            Text(type.title)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .applyCardStyle(size: 100, borderWidth: 0.5)
    }
}

struct DeviceTypeRow_Previews: PreviewProvider {
    static var previews: some View {
        DeviceTypeRow(type: .tv)
    }
}
