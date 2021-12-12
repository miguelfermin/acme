//
//  BillingView.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct BillingView: View {
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.yellow
            Text("BillingView")
        }
        .navigationTitle("Billing View")
    }
}

struct BillingView_Previews: PreviewProvider {
    static var previews: some View {
        BillingView()
    }
}
