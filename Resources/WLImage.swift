import SwiftUI

struct WLImage {
    private enum ImageSource {
        case assetName(String)
        case image(Image)
    }
    
    private let source: ImageSource
    
    init(imageAssetName: String) {
        self.source = .assetName(imageAssetName)
    }
    
    init(image: Image) {
        self.source = .image(image)
    }
    
   
    
    
    var asImage: Image {
        switch source {
        case .assetName(let name):
            if let bundlePath = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle"),
               let bundle = Bundle(path: bundlePath) {
               return Image(name, bundle: bundle)
            }
            return Image(name, bundle: WLResourcesBundle.current)
        case .image(let image):
            return image
        }
    }
    
    func changeColor(_ color: Color) -> WLImage {
        var newImage = self.asImage.renderingMode(.template).foregroundColor(color)
        return WLImage(image: newImage as! Image)
    }
    
}
