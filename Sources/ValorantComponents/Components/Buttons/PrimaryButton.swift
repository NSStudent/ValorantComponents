//
//  File.swift
//  
//
//  Created by Omar Megdadi on 25/07/2020.
//

import SwiftUI

public struct VAPrimaryButton<Label: View>: View {
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
        .buttonStyle(PrimaryButtonStyle())
        .padding()
    }
    
    public init(action: @escaping () -> Void, label: @escaping () -> Label) {
        self.action = action
        self.label = label
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    
    static var previews: some View {
        VAPrimaryButton(action: {}) { Text("Hello") }
    }
}


