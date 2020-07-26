//
//  File.swift
//  
//
//  Created by Omar Megdadi on 26/07/2020.
//

import SwiftUI

struct UserProfile_Library: LibraryContentProvider {
    var views: [LibraryItem] {
        return [
            LibraryItem(VAPrimaryButton(action: {}) {
                Text("Label")
            }, title: "PrimaryButton", category: .control),
            LibraryItem(VASecondaryButton(action: {}) {
                Text("Label")
            }, title: "Secondary", category: .control),
        ]
    }
}

struct LibraryViewContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(VAPrimaryButton(action: {}) {
            Text("Label")
        }, title: "PrimaryButton", category: .control)
        LibraryItem(VASecondaryButton(action: {}) {
            Text("Label")
        }, title: "Secondary", category: .control)
    }
}


struct LibraryModifierContent: LibraryContentProvider {
    @LibraryContentBuilder
    func modifiers(base: Button<AnyView>) -> [LibraryItem]{
        LibraryItem(base.buttonStyle(PrimaryButtonStyle()), title: "PrimaryButtonStyle", category: .other)
    }
}
