# WalletUISdk.podspec
Pod::Spec.new do |s|
  s.name         = "WalletUISdk"
  s.version      = "2.2.0.5.1"
  s.summary      = "WalletUISdk is a library for WalletUI."
  s.homepage     = "https://www.dgpays.com/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Yasin ÇETİN" => "yasin.cetin@dgpays.com" }
  s.source       = { :http => "https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/archive/refs/tags/2.2.0.5.1.zip" }
  s.ios.deployment_target = "13.0"
  s.platform     = :ios, "13.0"
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'

  s.vendored_frameworks = [
    "Frameworks/wallet_ios_sdk.xcframework",
    "Frameworks/WalletUISdk.xcframework"
  ]

  s.resource_bundles = {
    'WalletUISdkResources' => [
      'Resources/**/*.{xcassets,png,jpg,ttf,otf,lproj,json}',
      'Resources/Localization/*.lproj',
      'Resources/Animation/*.json',
      'WalletUISdk/Resources/Fonts/*.ttf',
      'WalletUISdk/Resources/Animation/*.json',
      'Frameworks/WalletUISdk.xcframework/ios-arm64/WalletUISdk.framework/*.pem',
      'Frameworks/wallet_ios_sdk.xcframework/ios-arm64/wallet_ios_sdk.framework/*.der'
    ]
  }

  s.resources = [
  'Resources/Localization/*.lproj',
  'Resources/Animation/*.json',
  'Frameworks/WalletUISdk.xcframework/ios-arm64/WalletUISdk.framework/*.pem',
  'Frameworks/wallet_ios_sdk.xcframework/ios-arm64/wallet_ios_sdk.framework/*.der'
]

  s.dependency 'EnVerify', '1.3.18.1'
  s.dependency 'AFNetworking', '4.0.1'
  s.dependency 'JSONModel', '1.7.0'
  s.dependency 'lottie-ios', '4.5.0'
  s.dependency 'FirebaseAnalytics', '10.27.0'

  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64'
  }
  
  s.frameworks = 'UIKit', 'Foundation'

end
