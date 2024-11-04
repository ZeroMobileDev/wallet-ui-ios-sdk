# WalletUISdk.podspec
Pod::Spec.new do |s|
  s.name         = "WalletUISdk"
  s.version      = "1.2.9.15"
  s.summary      = "WalletUISdk is a library for WalletUI."
  s.homepage     = "https://www.dgpays.com/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Enes Genç" => "enes.genc@dgpaysit.com" }
  s.source       = { :http => "https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/archive/refs/tags/1.2.9.15.zip" }
  s.ios.deployment_target = "13.0"
  s.platform     = :ios, "13.0"
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'

  s.vendored_frameworks = [
    "Frameworks/wallet_ios_sdk.xcframework",
    "Frameworks/WalletUISdk.framework"
  ]

  # Sadece public header'ları içerelim
  s.source_files = [
    "Frameworks/WalletUISdk.framework/Headers/*.h"
  ]

  # Public header'ları belirtelim
  s.public_header_files = [
    "Frameworks/WalletUISdk.framework/Headers/WalletUISdk.h"
  ]

  # Private header'ları açıkça belirtelim
  s.private_header_files = [
    "Frameworks/WalletUISdk.framework/PrivateHeaders/*.h"
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

  # Module map'i belirtelim
  s.module_map = "Frameworks/WalletUISdk.framework/Modules/module.modulemap"
end