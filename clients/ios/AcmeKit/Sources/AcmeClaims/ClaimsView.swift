//
//  ClaimsView.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct ClaimsView: View {
    
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.red
            Text("ClaimsView")
        }
        .navigationTitle("Claims View")
    }
}

struct ClaimsView_Previews: PreviewProvider {
    static var previews: some View {
        ClaimsView()
    }
}
