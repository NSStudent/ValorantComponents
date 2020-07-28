//
//  File.swift
//  
//
//  Created by Omar Megdadi on 25/07/2020.
//

import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {
    
    private let foreground = Color.VA.auxiliar
    private let backgroudColor = Color.VA.auxiliar
    private let height: CGFloat = 60
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(foreground)
            .padding()
            .frame(height: height)
            .background(
                Capsule()
                    .stroke(backgroudColor)
                    
            )
    }
    
    public init() {}
}
