import Foundation

class WLResourcesBundle {
    public static var bundle: Bundle? = {
        let path = Bundle(for: WLResourcesBundle.self).path(forResource: "tr", ofType: "lproj")
        return path != nil ? Bundle(path: path!) : nil
    }()
    
    static let path = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle")
    static let current = Bundle(path: path!)
    
    static func changeLanguage(language: String) {
        let path = Bundle(for: WLResourcesBundle.self).path(forResource: "tr", ofType: "lproj")
        if let bundlePath = path {
            WLResourcesBundle.bundle = Bundle(path: bundlePath)
        } else {
            print("Türkçe dil dosyası bulunamadı.")
        }
    }
}
