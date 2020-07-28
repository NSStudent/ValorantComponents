//
//  PrimaryButtonStyle.swift
//  
//
//  Created by Omar Megdadi on 25/07/2020.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    
    private let foreground = Color.VA.label
    private let backgroudColor = Color.VA.auxiliar
    private let height: CGFloat = 60
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(foreground)
            .padding()
            .frame(height: height)
            .background(
                Capsule()
                    .fill(backgroudColor)
            )
    }
    
    public init() {}
}
