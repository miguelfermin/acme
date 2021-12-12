//
//  SupportView.swift
//  
//
//  Created by Miguel Fermin on 12/12/21.
//

import SwiftUI

public struct SupportView: View {
    
    public  init() {}
    
    public var body: some View {
        ZStack {
            Color.blue
            Text("SupportView")
        }
        .navigationTitle("Support View")
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
