//
//  TextModifiers.swift
//  
//
//  Created by Omar Megdadi on 26/07/2020.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.font(Font.custom("VALORANT-Regular", fixedSize: 36))
    }
    
    init() {}
}

extension Text {
    public func title() -> some View {
        self.modifier(TitleModifier())
    }
}
