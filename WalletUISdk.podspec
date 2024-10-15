Pod::Spec.new do |s|
  s.name         = "WalletUISdk"
  s.version      = "1.0.9"
  s.summary      = "WalletUISdk is a library for WalletUI."
  s.homepage     = "https://www.dgpays.com/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Enes Genç" => "enes.genc@dgpaysit.com" }
  s.source       = { :http => "https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/archive/refs/tags/1.0.9.zip" }
  s.ios.deployment_target = "13.0"
  s.platform     = :ios, "13.0"
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'
  
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'x86_64 armv7 arm64',
  }
  s.user_target_xcconfig = {
    'VALID_ARCHS' => 'x86_64 armv7 arm64',
  }
  
  s.vendored_frameworks = "Frameworks/wallet_ios_sdk.xcframework", "Frameworks/WalletUISdk.framework"
  
  s.resource_bundles = {
    'WalletUISdkResources' => [
      'Resources/**/*.{xcassets,png,jpg,ttf,otf, lproj}',
      'Resources/Localization/*.lproj'
    ]
  }
  s.resources = ['Resources/Localization/*.lproj']
  
  s.frameworks = 'UIKit', 'Foundation'
end
