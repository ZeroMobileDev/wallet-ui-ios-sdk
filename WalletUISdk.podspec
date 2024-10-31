Pod::Spec.new do |s|
  s.name         = "WalletUISdk"
  s.version      = "1.2.9.3"
  s.summary      = "WalletUISdk is a library for WalletUI."
  s.homepage     = "https://www.dgpays.com/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Enes Genç" => "enes.genc@dgpaysit.com" }
  s.source       = { :http => "https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/archive/refs/tags/1.2.9.3.zip" }
  s.ios.deployment_target = "13.0"
  s.platform     = :ios, "13.0"
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'

  s.vendored_frameworks = [
    "Frameworks/wallet_ios_sdk.xcframework",
    "Frameworks/WalletUISdk.framework"
  ]

  # Firebase'in yaklaşımını uygulayalım
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }

  # Private header'ları gizlemek için
  s.module_map = {
    'preserve_paths' => [
      'Frameworks/WalletUISdk.framework/Headers/MfsIOSLibrary.h',
      'Frameworks/WalletUISdk.framework/Headers/MfsCard.h',
      'Frameworks/WalletUISdk.framework/Headers/MfsCheckbox.h',
      'Frameworks/WalletUISdk.framework/Headers/MfsResponse.h',
      'Frameworks/WalletUISdk.framework/Headers/MfsTextField.h',
      'Frameworks/WalletUISdk.framework/Headers/MfsWebView.h'
    ]
  }

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