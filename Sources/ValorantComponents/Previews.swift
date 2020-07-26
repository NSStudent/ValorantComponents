//
//  File.swift
//  
//
//  Created by Omar Megdadi on 26/07/2020.
//

import SwiftUI

struct Buttons_Previews: PreviewProvider {
    
    static var previews: some View {
        VAPrimaryButton(action: {}) { Text("Primary") }
            .previewLayout(.sizeThatFits)
        VASecondaryButton(action: {}) { Text("Secondary") }
            .previewLayout(.sizeThatFits)
    }
}
