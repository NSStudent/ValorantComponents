import SwiftUI

public struct VAComponents {
    public var text = "Hello, World!"
    public init() {}
    
    public static func loadPackage() {
        UIFont.registerFont(withFilenameString: "Valorant Font", bundle: .module)
    }
}
