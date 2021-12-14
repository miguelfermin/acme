//
//  Color+Extension.swift
//  
//
//  Created by Miguel Fermin on 12/14/21.
//

import SwiftUI

extension Color {
    init(_ name: String) {
        self = Color(name, bundle: Bundle.acmeKitBundle)
    }
    
    public enum Card {
        public static var border: Color {
            Color("card_border")
        }
        
        public static var background: Color {
            Color("card_background")
        }
    }
}
