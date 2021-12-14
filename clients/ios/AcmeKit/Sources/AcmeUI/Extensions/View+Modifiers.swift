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
        size: CGFloat? = nil,
        width: CGFloat? = nil,
        height: CGFloat? = nil,
        cornerRadius: Double = 12,
        fillColor: Color = Color.Card.background,
        borderColor: Color = Color.Card.border,
        borderWidth: Double = 1,
        shadowRadius: Double = 1
    ) -> some View {
        self
            .frame(width: width ?? size, height: height ?? size)
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
