import Foundation
import SwiftUI

final class CommonColors: ColorPalette {
    @ObservedObject private var configManager = ConfigurationManager.shared

    lazy var backgroundColor = WLColor(color: configManager.uiConfig!.backgroundColor)
    lazy var primaryColor = WLColor(color: configManager.uiConfig!.primaryColor)
    lazy var secondaryColor = WLColor(color: configManager.uiConfig!.secondaryColor)

    // lazy var darkPurple = WLColor(colorAssetName: "DarkPurple")
    lazy var darkPurple = WLColor(color: configManager.uiConfig!.primaryColor)
    lazy var semiGray = WLColor(colorAssetName: "ColorSemiGray")
    lazy var gray = WLColor(colorAssetName: "ColorGray")
    lazy var lightGray = WLColor(colorAssetName: "ColorLightGray")
    lazy var darkGray = WLColor(color: Color(hex: 0x979797))
    lazy var darkBackgroundGray = WLColor(color: Color(hex: 0xf3f5f9))
    lazy var turquosie = WLColor(colorAssetName: "ColorDarkTeal")
    lazy var actionColor = WLColor(colorAssetName: "action")
    lazy var secondaryBlue = WLColor(colorAssetName: "ColorTeal")
    lazy var disableButton = WLColor(colorAssetName: "disableButton")
    lazy var disableButtonTextColor = WLColor(color: Color(hex: 0xacb7c9))
    lazy var resetPasswordSubtitleColor = WLColor(color: Color(red: 0.09, green: 0.13, blue: 0.2))
    lazy var redColor = WLColor(color: Color(hex: 0xe32a2c))
    lazy var tabGray = WLColor(color: Color(hex: 0xdfe4ec))
    lazy var dateAndTime = WLColor(color: Color.black)
    lazy var blackColor = WLColor(color: Color.black)
    lazy var brickRedColor = WLColor(colorAssetName: "brickRedColor")
    lazy var whiteColor = WLColor(color: Color.white)
    lazy var darkBlue = WLColor(color: Color(red: 0.12, green: 0.18, blue: 0.35))

    lazy var resetPasswordQuestionBackgroundColor = WLColor(color: Color(red: 0.87, green: 0.89, blue: 0.93))
    lazy var resetPasswordQuestionTextColor = WLColor(color: Color(red: 0.59, green: 0.59, blue: 0.59))

    lazy var subTitleColor = WLColor(color: Color(hex: 0x979797))
    lazy var toogleColor = WLColor(color: Color(hex: 0x5fcc29))
}

protocol ColorPalette {
    var backgroundColor: WLColor { get }
    var resetPasswordSubtitleColor: WLColor { get }

    var resetPasswordQuestionBackgroundColor: WLColor { get }
    var resetPasswordQuestionTextColor: WLColor { get }

    var primaryColor: WLColor { get }
    var secondaryColor: WLColor { get }
    var actionColor: WLColor { get }

    var darkPurple: WLColor { get }
    var semiGray: WLColor { get }
    var lightGray: WLColor { get }
    var darkGray: WLColor { get }
    var darkBackgroundGray: WLColor { get }
    var turquosie: WLColor { get }
    var secondaryBlue: WLColor { get }
    var disableButton: WLColor { get }
    var disableButtonTextColor: WLColor { get }
    var redColor: WLColor { get }
    var tabGray: WLColor { get }
    var dateAndTime: WLColor { get }
    var blackColor: WLColor { get }
    var gray: WLColor { get }
    var brickRedColor: WLColor { get }
    var whiteColor: WLColor { get }

    var subTitleColor: WLColor { get }
    var toogleColor: WLColor { get }
    var darkBlue: WLColor { get }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
