//
//  PlansView.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct PlansView: View {
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.green
            Text("PlansView")
        }
        .navigationTitle("Plans View")
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView()
    }
}
