import Foundation
import SwiftUI

final class CommonColors: ColorPalette {
    @ObservedObject private var configManager = ConfigurationManager.shared
    
    lazy var backgroundColor = WLColor(color: configManager.uiConfig!.backgroundColor)
    lazy var primaryColor = WLColor(color: configManager.uiConfig!.primaryColor)
    lazy var secondaryColor = WLColor(color: configManager.uiConfig!.secondaryColor)

    //lazy var darkPurple = WLColor(colorAssetName: "DarkPurple")
    lazy var darkPurple = WLColor(color: configManager.uiConfig!.primaryColor)
    lazy var semiGray = WLColor(colorAssetName: "ColorSemiGray")
    lazy var lightGray = WLColor(colorAssetName: "ColorLightGray")
    lazy var turquosie = WLColor(colorAssetName: "ColorDarkTeal")
    lazy var actionColor = WLColor(colorAssetName: "action")
    lazy var secondaryBlue = WLColor(colorAssetName: "ColorTeal")
    lazy var dateAndTime = WLColor(color: Color.black)
    lazy var blackColor =  WLColor(color: Color.black)
}

protocol ColorPalette {
    var backgroundColor: WLColor { get }
    var primaryColor: WLColor { get }
    var secondaryColor: WLColor { get }
    var actionColor: WLColor { get }

    var darkPurple: WLColor { get }
    var semiGray: WLColor { get }
    var lightGray: WLColor { get }
    var turquosie: WLColor { get }
    var secondaryBlue: WLColor { get }
    var dateAndTime: WLColor { get }
    var blackColor: WLColor { get }
}
