import SwiftUI

struct WLImage {
    private enum ImageSource {
        case assetName(String)
        case image(Image)
    }
    
    private let source: ImageSource
    private var scaleSize: Double = 1.0 // Default scale size
    private var assetName:String = ""
    
    init(imageAssetName: String) {
        self.source = .assetName(imageAssetName)
        self.assetName = imageAssetName
    }
    
    init(image: Image) {
        self.source = .image(image)
    }
    
    var asImage: Image {
        switch source {
        case .assetName(let name):
            if let bundlePath = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle"),
               let bundle = Bundle(path: bundlePath)
            {
                return Image(name, bundle: bundle)
            }
            return Image(name, bundle: WLResourcesBundle.current)
        case .image(let image):
            return image
        }
    }
    
    public var asUIImage: UIImage? {
        if let bundlePath = Bundle.main.path(forResource: "WalletUISdkResources", ofType: "bundle"),
           let bundle = Bundle(path: bundlePath)
        {
            return UIImage(
              named: self.assetName,
              in: bundle,
              compatibleWith: nil
            )
        }
        return UIImage(
          named: self.assetName,
          in: WLResourcesBundle.current,
          compatibleWith: nil
        )
    }
    
    func changeColor(_ color: Color) -> WLImage {
        var newImage = asImage.renderingMode(.template).foregroundColor(color)
        return WLImage(image: newImage as! Image)
    }
    
    func scale(downTo size: Double) -> WLImage {
        var newImage = self
        newImage.scaleSize = size
        return newImage
    }
    
    var scaledView: some View {
        asImage.resizable()
            .scaledToFit()
            .scaleEffect(scaleSize)
    }
}
