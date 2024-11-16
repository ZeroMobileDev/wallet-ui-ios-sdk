//
//  WLLanguages.swift
//  WalletUiSDK
//
//  Created by Taha Cansizoglu on 24.06.2024.
//

import Foundation
enum WLLanguages: String {
  
    case english_us = "en"
    case turkish = "tr"
}

class LocalizationService {

    static let shared = LocalizationService()
    static let changedLanguage = Notification.Name("changedLanguage")

    private init() {
        UserDefaults.standard.setValue(WLLanguages.turkish.rawValue, forKey: "language")
        UserDefaults.standard.synchronize()
    }
    
    var language: String {
        get {
            return WLLanguages.turkish.rawValue
        } set {
            if newValue != WLLanguages.turkish.rawValue {
                UserDefaults.standard.setValue(WLLanguages.turkish.rawValue, forKey: "language")
                UserDefaults.standard.synchronize()
                
                WLResourcesBundle.changeLanguage(language: WLLanguages.turkish.rawValue)
            }
        }
    }
}
