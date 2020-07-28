//
//  File.swift
//  
//
//  Created by Omar Megdadi on 25/07/2020.
//

import SwiftUI

public struct VASecondaryButton<Label: View>: View {
    let action: () -> Void
    let label: () -> Label
    
    public var body: some View {
        Button(action: action, label: {
            HStack{
                Spacer()
                label()
                Spacer()
            }
        })
        .buttonStyle(SecondaryButtonStyle())
        .padding()
    }
    
    public init(action: @escaping () -> Void, label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }
}
