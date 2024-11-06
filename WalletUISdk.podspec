# WalletUISdk.podspec
Pod::Spec.new do |s|
  s.name         = "WalletUISdk"
  s.version      = "1.2.9.16"
  s.summary      = "WalletUISdk is a library for WalletUI."
  s.homepage     = "https://www.dgpays.com/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Yasin ÇETİN" => "yasin.cetin@dgpays.com" }
  s.source       = { :http => "https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/archive/refs/tags/1.2.9.16.zip" }
  s.ios.deployment_target = "13.0"
  s.platform     = :ios, "13.0"
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'

  s.vendored_frameworks = [
    "Frameworks/wallet_ios_sdk.xcframework",
    "Frameworks/WalletUISdk.xcframework"
  ]

  # Sadece public header'ları içerelim
  s.source_files = [
    "Frameworks/WalletUISdk.xcframework/ios-arm64/WalletUISdk.framework/Headers/*.h",
    "Frameworks/WalletUISdk.xcframework/ios-x86_64-simulator/WalletUISdk.framework/Headers/*.h"
  ]

  # Public header'ları belirtelim
  s.public_header_files = [
    "Frameworks/WalletUISdk.xcframework/ios-arm64/WalletUISdk.framework/Headers/WalletUISdk.h",
    "Frameworks/WalletUISdk.xcframework/ios-x86_64-simulator/WalletUISdk.framework/Headers/WalletUISdk.h"
  ]

  s.resource_bundles = {
    'WalletUISdkResources' => [
      'Resources/**/*.{xcassets,png,jpg,ttf,otf,lproj}',
      'Resources/Localization/*.lproj',
      'WalletUISdk/Resources/Fonts/*.ttf',
    ]
  }
  s.resources = ['Resources/Localization/*.lproj']
  
  s.frameworks = 'UIKit', 'Foundation'

end