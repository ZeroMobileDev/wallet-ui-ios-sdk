import Foundation

class WLResourcesBundle {
//    static let path = Bundle(for: WLResourcesBundle.self).path(forResource: "en", ofType: "lproj")
    public static var bundle = Bundle(path: path!)
//    static let current = Bundle(for: WLResourcesBundle.self)
    static let path = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle")
    static let current = Bundle(path: path!)
    
    static func changeLanguage(language: String) {
        let path = Bundle(for: WLResourcesBundle.self).path(forResource: language, ofType: "lproj")
        WLResourcesBundle.bundle = Bundle(path: path!)
    }
}
