## How to use Dgpays Wallet UI SDK

### Supported iOS Versions
Wallet UI SDK supports iOS 13+ and Xcode 15 is required to build Wallet UI iOS SDK.

## Installation Methods

### Manual Installation
You can install Wallet UI SDK in your mobile application by include xcframework library provided by Dgpays. Please visit the following link to download the xcframework file.

https://github.com/ZeroMobileDev/wallet-ui-ios-sdk/tree/main/Frameworks

### Pod File Installation

Alternatively, you can install Wallet UI SDK via CocoaPods
Cocoapods 1.10 or above is required to install WalletUISdk. Add the WalletUISdk pod into your Podfile and run pod install.

```yaml
target :YourAppTargetName do 
  pod 'WalletUISdk', :git => 'https://github.com/ZeroMobileDev/wallet-ui-ios-sdk.git', :tag => '1.3.5'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
      config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
      config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
 
      if target.name == 'Alamofire'
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      else
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
 
    end
  end
end
```

## Permissions

In order to use Wallet UI SDK, you should add the following permissions in Info.plist file

| Permission Key Value | | |
| ------- | --- | --- |
| Camera | Privacy - Camera Usage Description | $(PRODUCT_NAME) camera use |


## Usage Wallet UI SDK

After adding the dependencies and permissions, you are now able to call the methods of Wallet UI SDK.

### Swift

```yaml
import WalletUISdk

//  SDK init Methods
initWalletUi(environment: .UAT) { value in
            print("success")
        } closeCallback: { value in
            print(" close")
        }

// Set Phone Number
WalletUiSDK.Phone.set(phone: "YourPhoneNumer")

// Open Screens

WalletUiSDK.Navigate.dashboard()

```
## Wallet UI SDK Screen Methods

| Screen  Method Name | Description  |
| ------- | --- | 
| dashboard()  | Wallet Dashboard Screen |
| login()  | Login Screen |
| verify()  | Verify phone Number Screen |
| cardList()  |  |
| history()  |  |
| sendMoney()  | |
| sendMoneyPhone()  |  |
| sendMoneyIBAN()  |  |
| loadMoney()  |  |
| loadMoneyMasterpass()  |  |
| loadMoneyCreditCard()  |  |
| askMoney()  |  |
| QR()  |  |
| dgfinDashboard()  |  |
| dgfinLoanInfo()  |  |
| dgfinPaybackPlan()  |  |
| dgfinCustomerApplication()  |  |
| dgfinLoanCreate(amount: Double, itemsInBasket: [[String : Any]], externalReference: String)  |  |
