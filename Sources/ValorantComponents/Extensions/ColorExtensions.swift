//
//  ColorExtensions.swift
//  
//
//  Created by Omar Megdadi on 25/07/2020.
//

import SwiftUI

extension Color {
    public enum VA {
        
        public static var background: Color {
            Color("background", bundle: .module)
        }
        
        public static var label: Color {
            Color("label", bundle: .module)
        }
        
        public static var auxiliar: Color {
            Color("auxiliar", bundle: .module)
        }
    }
}
