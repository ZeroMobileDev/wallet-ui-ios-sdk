//
//  WLFonts.swift
//  WalletUiSDK
//
//  Created by Taha Cansizoglu on 29.07.2024.
//

import Foundation
import SwiftUI

extension Font {
    ///
    /// Use the closest weight if your typeface does not support a particular weight
    ///
    static private var regularFontName: String {
        "SourceSansPro-Regular"
    }

    static private var mediumFontName: String {
        "SourceSansPro-Regular" // Orta kalınlıkta font yoksa regular kullanılır
    }

    static private var boldFontName: String {
        "SourceSansPro-Bold"
    }

    static private var semiBoldFontName: String {
        "SourceSansPro-Bold" // Kalın font yoksa bold kullanılır
    }

    static private var extraBoldFontName: String {
        "SourceSansPro-Bold"
    }

    static private var heavyFontName: String {
        "SourceSansPro-Bold" // Çok kalın font yoksa extra bold kullanılır
    }

    static private var lightFontName: String {
        "SourceSansPro-Light"
    }

    static private var thinFontName: String {
        "SourceSansPro-Light" // İnce font yoksa light kullanılır
    }

    static private var ultraThinFontName: String {
        "SourceSansPro-Light" // Çok ince font yoksa light kullanılır
    }

    /// Sizes
    private static var preferredSizeTitle: CGFloat {
        UIFont.preferredFont(forTextStyle: .title1).pointSize
    }

    private static var preferredLargeTitle: CGFloat {
        UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
    }

    private static var preferredExtraLargeTitle: CGFloat {
        if #available(iOS 17.0, *) {
            return UIFont.preferredFont(forTextStyle: .extraLargeTitle).pointSize
        } else {
            return UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
        }
    }

    private static var preferredExtraLargeTitle2: CGFloat {
        if #available(iOS 17.0, *) {
            return UIFont.preferredFont(forTextStyle: .extraLargeTitle2).pointSize
        } else {
            return UIFont.preferredFont(forTextStyle: .largeTitle).pointSize
        }
    }

    private static var preferredTitle1: CGFloat {
        UIFont.preferredFont(forTextStyle: .title1).pointSize
    }

    private static var preferredTitle2: CGFloat {
        UIFont.preferredFont(forTextStyle: .title2).pointSize
    }

    private static var preferredTitle3: CGFloat {
        UIFont.preferredFont(forTextStyle: .title3).pointSize
    }

    private static var preferredHeadline: CGFloat {
        UIFont.preferredFont(forTextStyle: .headline).pointSize
    }

    private static var preferredSubheadline: CGFloat {
        UIFont.preferredFont(forTextStyle: .subheadline).pointSize
    }

    private static var preferredBody: CGFloat {
        UIFont.preferredFont(forTextStyle: .body).pointSize
    }

    private static var preferredCallout: CGFloat {
        UIFont.preferredFont(forTextStyle: .callout).pointSize
    }

    private static var preferredFootnote: CGFloat {
        UIFont.preferredFont(forTextStyle: .footnote).pointSize
    }

    private static var preferredCaption: CGFloat {
        UIFont.preferredFont(forTextStyle: .caption1).pointSize
    }

    private static var preferredCaption2: CGFloat {
        UIFont.preferredFont(forTextStyle: .caption2).pointSize
    }

    /// Styles
    public static var title: Font {
        return Font.custom(regularFontName, size: preferredTitle1)
    }

    public static var title2: Font {
        return Font.custom(regularFontName, size: preferredTitle2)
    }

    public static var title3: Font {
        return Font.custom(regularFontName, size: preferredTitle3)
    }

    public static var largeTitle: Font {
        return Font.custom(regularFontName, size: preferredLargeTitle)
    }

    public static var body: Font {
        return Font.custom(regularFontName, size: preferredBody)
    }

    public static var headline: Font {
        return Font.custom(regularFontName, size: preferredHeadline)
    }

    public static var subheadline: Font {
        return Font.custom(regularFontName, size: preferredSubheadline)
    }

    public static var callout: Font {
        return Font.custom(regularFontName, size: preferredCallout)
    }

    public static var footnote: Font {
        return Font.custom(regularFontName, size: preferredFootnote)
    }

    public static var caption: Font {
        return Font.custom(regularFontName, size: preferredCaption)
    }

    public static var caption2: Font {
        return Font.custom(regularFontName, size: preferredCaption2)
    }

    public static func customSystem(_ style: Font.TextStyle, design: Font.Design? = nil, weight: Font.Weight? = nil) -> Font {
        var size: CGFloat
        var fontName: String

        switch style {
        case .largeTitle:
            size = preferredLargeTitle
        case .title:
            size = preferredTitle1
        case .title2:
            size = preferredTitle2
        case .title3:
            size = preferredTitle3
        case .headline:
            size = preferredHeadline
        case .subheadline:
            size = preferredSubheadline
        case .body:
            size = preferredBody
        case .callout:
            size = preferredCallout
        case .footnote:
            size = preferredFootnote
        case .caption:
            size = preferredCaption
        case .caption2:
            size = preferredCaption2
        case .extraLargeTitle:
            size = preferredExtraLargeTitle
        case .extraLargeTitle2:
            size = preferredExtraLargeTitle2
        default:
            size = preferredBody
        }

        // Optional Binding kullanarak weight değerini kontrol ediyoruz
        switch weight {
        case .bold?:
            fontName = boldFontName
        case .regular?:
            fontName = regularFontName
        case .heavy?:
            fontName = heavyFontName
        case .light?:
            fontName = lightFontName
        case .medium?:
            fontName = mediumFontName
        case .semibold?:
            fontName = semiBoldFontName
        case .thin?:
            fontName = thinFontName
        case .ultraLight?:
            fontName = ultraThinFontName
        case nil: // weight nil ise varsayılan olarak regular font kullanılır
            fontName = regularFontName
        case .some(_):
            fontName = regularFontName
        }

        return Font.custom(fontName, size: size)
    }

    public static func customSystem(size: CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font {
        var fontName: String

        // weight değeri zaten belirtildiği için optional binding kullanmıyoruz
        switch weight {
        case .bold:
            fontName = boldFontName
        case .regular:
            fontName = regularFontName
        case .heavy:
            fontName = heavyFontName
        case .light:
            fontName = lightFontName
        case .medium:
            fontName = mediumFontName
        case .semibold:
            fontName = semiBoldFontName
        case .thin:
            fontName = thinFontName
        case .ultraLight:
            fontName = ultraThinFontName
        default:
            fontName = regularFontName
        }

        return Font.custom(fontName, size: size)
    }
}
