Pod::Spec.new do |s|
  s.name         = "WalletUISdk"
  s.version      = "1.1.0"
  s.summary      = "WalletUISdk is a library for WalletUI."
  s.homepage     = "https://www.dgpays.com/"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Enes Genç" => "enes.genc@dgpaysit.com" }
  s.source       = { :http => "https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/archive/refs/tags/1.1.0.zip" }
  s.ios.deployment_target = "13.0"
  s.platform     = :ios, "13.0"
  s.requires_arc = true
  s.static_framework = true
  s.swift_versions = '5.0'
#   s.pod_target_xcconfig = {
# 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 armv7 arm64',
# 'VALID_ARCHS' => 'x86_64 armv7 arm64',
# }
# s.user_target_xcconfig = {
# 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 armv7 arm64',
# 'VALID_ARCHS' => 'x86_64 armv7 arm64',
# }
  # s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # s.source_files = "WalletUISdk/**/*.{h,m,swift}" , "Frameworks/WalletUISdk.modulemap"
  #  "Frameworks/MasterPass/Library/include/MfsIOSLibrary/*.h"

  # s.module_map = "Frameworks/WalletUISdk.modulemap"

  # s.dependency 'EnVerify', '1.3.17.1'
  # s.dependency 'Starscream', '4.0.8'
  # s.dependency 'AFNetworking', '4.0.1'
  # s.dependency 'JSONModel', '1.7.0'

  #s.public_header_files = "WalletUISdk/WalletUiSdk.h"
  # , "Frameworks/MasterPass/Library/include/MfsIOSLibrary/*.h"
  s.vendored_frameworks = "Frameworks/wallet_ios_sdk.xcframework", "Frameworks/WalletUISdk.xcframework"
  # , "WalletUISdk.framework"
  # s.vendored_libraries = ["Frameworks/MasterPass/Library/libMfsIOSLibrary2Universal.a", "Frameworks/MasterPass/Library/ssl/libcrypto.a", "Frameworks/MasterPass/Library/ssl/libssl.a"]

  s.resource_bundles = {
    'WalletUISdkResources' => [
      'Resources/**/*.{xcassets,png,jpg,ttf,otf, lproj}',
      'Resources/Localization/*.lproj',
      'WalletUISdk/Resources/Fonts/*.ttf',
    ]
  }
  s.resources = ['Resources/Localization/*.lproj']
  
  s.frameworks = 'UIKit', 'Foundation'
end
