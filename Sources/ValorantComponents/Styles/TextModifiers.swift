//
//  TextModifiers.swift
//  
//
//  Created by Omar Megdadi on 26/07/2020.
//

import SwiftUI

public struct TitleModifier: ViewModifier {
    public func body(content: Content) -> some View {
        UIFont.jbs_registerFont(withFilenameString: "Valorant Font", bundle: .module)
        return content.font(Font.custom("VALORANT-Regular", fixedSize: 36))
    }
    
    public init() {}
}

public extension UIFont {
    
    static func fontNames() -> [URL] {
        let bundle = Bundle.module
        let filenames = ["Valorant Font"]
        return filenames.map { bundle.url(forResource: $0, withExtension: "ttf")! }
    }

    public static func jbs_registerFont(withFilenameString filenameString: String, bundle: Bundle) {

        guard let pathForResourceString = bundle.path(forResource: filenameString, ofType: "ttf") else {
            print("UIFont+:  Failed to register font - path for resource not found.")
            return
        }

        guard let fontData = NSData(contentsOfFile: pathForResourceString) else {
            print("UIFont+:  Failed to register font - font data could not be loaded.")
            return
        }

        guard let dataProvider = CGDataProvider(data: fontData) else {
            print("UIFont+:  Failed to register font - data provider could not be loaded.")
            return
        }

        guard let font = CGFont(dataProvider) else {
            print("UIFont+:  Failed to register font - font could not be loaded.")
            return
        }

        var errorRef: Unmanaged<CFError>? = nil
        if (CTFontManagerRegisterGraphicsFont(font, &errorRef) == false) {
            print("UIFont+:  Failed to register font - register graphics font failed - this font may have already been registered in the main bundle.")
        }
    }

}
