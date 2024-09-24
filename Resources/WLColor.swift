import SwiftUI

struct WLColor {
    private enum ColorSource {
        case assetName(String)
        case color(Color)
    }
    
    private let source: ColorSource

    init(colorAssetName: String) {
        self.source = .assetName(colorAssetName)
    }
    
    init(color: Color) {
        self.source = .color(color)
    }
    
    var asColor: Color {
        switch source {
        case .assetName(let name):
            if let bundlePath = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle"),
               let bundle = Bundle(path: bundlePath) {
               return Color(name, bundle: bundle)
            }
            return Color(name, bundle: WLResourcesBundle.current)
        case .color(let color):
            return color
        }
    }
    
    var asUIColor: UIColor {
        if #available(iOS 14.0, *) {
            // iOS 14 ve üzeri için Color'dan UIColor'a dönüştürme
            return UIColor(self.asColor)
        } else {
            // iOS 13 ve altı için renk dönüşümü
            switch source {
            case .assetName(let name):
                if let bundlePath = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle"),
                   let bundle = Bundle(path: bundlePath),
                   let uiColor = UIColor(named: name, in: bundle, compatibleWith: nil) {
                    return uiColor
                }
                if let uiColor = UIColor(named: name, in: WLResourcesBundle.current, compatibleWith: nil) {
                    return uiColor
                }
                // Eğer belirtilen renk bulunamazsa varsayılan bir renk dönün
                return UIColor.black
            case .color(let color):
                return UIColor.yellow
            }
        }
    }
    
//    var asUIColor: UIColor {
//        // FIXME: burada duzenleme yapilacak
//        if #available(iOS 14.0, *) {
//            let color = UIColor(self.asColor)
//        } else {
//            // Fallback on earlier versions
//            // ios 13 ve icin
//            return UIColor()
//        }
//        return UIColor.yellow
//    }
}
