//
//  View+Modifiers.swift
//  
//
//  Created by Miguel Fermin on 12/14/21.
//

import SwiftUI

// MARK: - Card Styles
extension View {
    public func applyCardStyle(
        cornerRadius: Double = 12,
        fillColor: Color = Color.Card.background,
        borderColor: Color = Color.Card.border,
        borderWidth: Double = 1,
        shadowRadius: Double = 1
    ) -> some View {
        self
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(fillColor)
                    .shadow(radius: shadowRadius)
            )
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
            .padding(borderWidth + 2)
    }
}

// MARK: - Frame
extension View {
    public func frame(size: CGFloat) -> some View {
        self.frame(width: size, height: size)
    }
}
