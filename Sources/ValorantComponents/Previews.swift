//
//  File.swift
//  
//
//  Created by Omar Megdadi on 26/07/2020.
//

import SwiftUI

struct Buttons_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            VAPrimaryButton(action: {}) { Text("Primary") }
                .previewLayout(.sizeThatFits)
            VAPrimaryButton(action: {}) { Text("Primary") }
                .previewLayout(.sizeThatFits)
                .colorScheme(.dark)
        }.background(Color.VA.background)
        VASecondaryButton(action: {}) { Text("Secondary") }
            .previewLayout(.sizeThatFits)
    }
}
