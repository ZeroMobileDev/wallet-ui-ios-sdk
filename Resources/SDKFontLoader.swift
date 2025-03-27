import CoreText
import UIKit

public class SDKFontLoader {
    public static let shared = SDKFontLoader()

    private init() {}

    public func font(name: String, size: CGFloat) -> UIFont? {
        return UIFont(name: name, size: size)
    }

    public func loadCustomFonts() {
        if let bundleURL = Bundle.main.url(forResource: "WalletUISdkResources", withExtension: "bundle"),
           let resourceBundle = Bundle(url: bundleURL)
        {
            let fontNames = [
                "SourceSansPro-Black", "SourceSansPro-BlackItalic",
                "SourceSansPro-Bold", "SourceSansPro-BoldItalic",
                "SourceSansPro-ExtraLight", "SourceSansPro-Italic",
                "SourceSansPro-Light", "SourceSansPro-LightItalic",
                "SourceSansPro-SemiboldItalic", "SourceSansPro-Semibold",
                "SourceSansPro-Regular"
            ]
            for fontName in fontNames {
                if let fontURL = resourceBundle.url(forResource: fontName, withExtension: "ttf") {
                    CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, nil)
//                    print("Successfully registered font: \(fontName)")
                } else {
                    print("Failed to find \(fontName).ttf in the resource bundle")
                }
            }
        } else {
            print("Failed to load WalletUISdkResources.bundle")
        }
    }
}
