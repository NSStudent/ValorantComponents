import SwiftUI

public struct ValorantComponents {
    public var text = "Hello, World!"
    public init() {}
    
    public static func loadPackage() {
        UIFont.registerFont(withFilenameString: "Valorant Font", bundle: .module)
    }
}
