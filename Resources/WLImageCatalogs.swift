import Foundation
import SwiftUI
// swiftlint:disable identifier_name


final class WLImageCatalog: ImageCatalog {
    
    @ObservedObject private var configManager = ConfigurationManager.shared
    
    // Configuration Assets
    lazy var logo_light = WLImage(image: configManager.uiConfig!.logoLight)
    lazy var logo_dark = WLImage(image: configManager.uiConfig!.logoDark)
    lazy var background_image = WLImage(image: configManager.uiConfig!.background)
    lazy var splash_screen =  WLImage(imageAssetName: "splash-screen")

    // Static Assets
    lazy var wallet_navigationbar_logo =  WLImage(imageAssetName: "zubizu-appbar-cüzdan-logo")
    lazy var search_icon =  WLImage(imageAssetName: "search-icon")
    lazy var dummy_card =  WLImage(imageAssetName: "Dummy-Cards")
    lazy var wallet =  WLImage(imageAssetName: "u_wallet")
    lazy var share_circle =  WLImage(imageAssetName: "share-circle")
    lazy var home_screen_send_money =  WLImage(imageAssetName: "ana-sayfa-shortcut-send-money")
    lazy var home_screen_spend_split =  WLImage(imageAssetName: "ana-sayfa-shortcut-spending-split")
    lazy var home_screen_banner_image =  WLImage(imageAssetName: "banner&kampanya")
    lazy var icon_empty_transaction =  WLImage(imageAssetName: "icon-area")
    lazy var tab_bar_home_screen_tab_default =  WLImage(imageAssetName: "ana-sayfa")
    lazy var tab_bar_home_screen_tab_purple =  WLImage(imageAssetName: "ana-sayfa-purple")
    lazy var tab_bar_transactions_tab_default =  WLImage(imageAssetName: "islemler")
    lazy var tab_bar_transactions_tab_purple =  WLImage(imageAssetName: "islemler-purple")
    lazy var tab_bar_finance_tab_default =  WLImage(imageAssetName: "finans-guru")
    lazy var tab_bar_finance_tab_purple =  WLImage(imageAssetName: "finans-guru-purple")
    lazy var tab_bar_my_profile_tab_default = WLImage(imageAssetName: "profilim")
    lazy var tab_bar_my_profile_tab_purple =  WLImage(imageAssetName: "profilim-purple")
    lazy var micro_credit_apply =  WLImage(imageAssetName: "micro-credit-basvur")
    lazy var micro_credit_not_login =  WLImage(imageAssetName: "micro-credit-login")
    lazy var waiting_transactions =  WLImage(imageAssetName: "bekleyen-islemler")
    lazy var transaction_history_not_login =  WLImage(imageAssetName: "islem-gecmisi-login")
    lazy var offers = WLImage(imageAssetName: "kampanyalar")
    lazy var purple_circle_calander =  WLImage(imageAssetName: "islem-gecmis")
    lazy var u_money_withdraw =  WLImage(imageAssetName: "u_money-withdraw")
    lazy var u_receipt =  WLImage(imageAssetName: "Receipt")
    lazy var u_outgoing_transactions =  WLImage(imageAssetName: "islemlerim-giden")
    lazy var u_incoming_transactions =  WLImage(imageAssetName: "islemlerim-gelen")
    lazy var u_split_the_spending =  WLImage(imageAssetName: "Users")
    lazy var u_insurance =  WLImage(imageAssetName: "Umbrella")
    lazy var u_extra_limit =  WLImage(imageAssetName: "Wallet")
    lazy var mastercard_icon =  WLImage(imageAssetName: "mp_vrt_pos_othermarks_87_2x")
    lazy var stored_card_master_card_icon = WLImage(imageAssetName: "MasterCard")
    lazy var radiobutton_fill =  WLImage(imageAssetName: "radiobutton_fill")
    lazy var radiobutton_empty =  WLImage(imageAssetName: "radiobutton_empty")
    lazy var plus_button =  WLImage(imageAssetName: "plus")
    lazy var zbz_cuzdan =  WLImage(imageAssetName: "zbz-cuzdan")
    lazy var cards_with_money =  WLImage(imageAssetName: "cardswmoney")
    lazy var phone =  WLImage(imageAssetName: "phone")
    lazy var checkbox_empty =  WLImage(imageAssetName: "chechk-box-empty")
    lazy var checkbox_fill =  WLImage(imageAssetName: "chechk-box-fill")
    lazy var backround_half =  WLImage(imageAssetName: "giris-gorsel_devam")
    lazy var cards =  WLImage(imageAssetName: "cards")
    lazy var stacks =  WLImage(imageAssetName: "Stack")
    lazy var gift =  WLImage(imageAssetName: "gift")
    lazy var campaign =  WLImage(imageAssetName: "campaign")
    lazy var login_error =  WLImage(imageAssetName: "login-error")
    lazy var vakifbank_icon =  WLImage(imageAssetName: "vakifbank")
    lazy var pop_up_icon_successful =  WLImage(imageAssetName: "pop-up-icon-successful")
    lazy var pop_up_icon_info = WLImage(imageAssetName: "pop-up-icon-info")
    lazy var load_money_bank_account_info_tab_1 =  WLImage(imageAssetName: "load-money-bank-account-info-tab-1")
    lazy var load_money_bank_account_info_tab_2 =  WLImage(imageAssetName: "load-money-bank-account-info-tab-2")
    lazy var load_money_bank_account_info_tab_3 =  WLImage(imageAssetName: "load-money-bank-account-info-tab-3")
    lazy var load_money_bank_account_info_tab_4 =  WLImage(imageAssetName: "load-money-bank-account-info-tab-4")
    lazy var tik_image =  WLImage(imageAssetName: "tik")
    lazy var notifications =  WLImage(imageAssetName: "notifications")
    lazy var notification_outline =  WLImage(imageAssetName: "notification_outline")
    lazy var clipboard_text =  WLImage(imageAssetName: "ClipboardText")
    lazy var copy_simple =  WLImage(imageAssetName: "CopySimple")
    lazy var chat_circle =  WLImage(imageAssetName: "ChatCircle")
    lazy var film_script =  WLImage(imageAssetName: "FilmScript")
    lazy var note =  WLImage(imageAssetName: "Note")
    lazy var file =  WLImage(imageAssetName: "File")
    lazy var cookie =  WLImage(imageAssetName: "cookie")
    lazy var circle_wavy_question =  WLImage(imageAssetName: "CircleWavyQuestion")
    lazy var sign_out =  WLImage(imageAssetName: "SignOut")
    lazy var kyc_1 =  WLImage(imageAssetName: "KYC-image-1")
    lazy var kyc_2 =  WLImage(imageAssetName: "KYC-image-2")
    lazy var kyc_verify_identity = WLImage(imageAssetName: "kimliginidogrula")
    lazy var purple_ellipse =  WLImage(imageAssetName: "purple_ellipse")
    lazy var white_plus =  WLImage(imageAssetName: "white_plus")
    lazy var purple_gradient =  WLImage(imageAssetName: "purple_gradient")
    lazy var masterpass_logo =  WLImage(imageAssetName: "masterpass_logo")
    lazy var icon_Share =  WLImage(imageAssetName: "iconShare")
    lazy var icon_Xmark =  WLImage(imageAssetName: "icon_xmark")
    lazy var bank_icon =  WLImage(imageAssetName: "bank-icon")
    lazy var scanQR_first_image = WLImage(imageAssetName: "scanQRFirstImage")
    lazy var scanQR_second_image = WLImage(imageAssetName: "ScanQRSecondImage")
    lazy var camera_image =  WLImage(imageAssetName: "camera-image")
    lazy var receipt_icon =  WLImage(imageAssetName: "receipt-icon")
    lazy var four_squares =  WLImage(imageAssetName: "SquaresFour")
    lazy var calander_purple =  WLImage(imageAssetName: "tarih-purple")
    lazy var calander =  WLImage(imageAssetName: "tarih")
    lazy var delete_icon =  WLImage(imageAssetName: "sil")
    lazy var user_icon =  WLImage(imageAssetName: "User")
    lazy var pop_up_icon_hand =  WLImage(imageAssetName: "pop-up-icon-hand")
    lazy var pop_up_icon_unsuccessful =  WLImage(imageAssetName: "pop-up-icon-unsuccessful")
    lazy var qr_shadow =  WLImage(imageAssetName: "qr_shadow")
    lazy var shopping_cart =  WLImage(imageAssetName: "ShoppingCart")
    lazy var invoice_payment =  WLImage(imageAssetName: "Invoice-payment")
    lazy var money_transfer =  WLImage(imageAssetName: "money-transfer")
    lazy var transaction_fee =  WLImage(imageAssetName: "transaction-fee")
    lazy var cashback = WLImage(imageAssetName: "cashback")
    lazy var cash_withdraw =  WLImage(imageAssetName: "withdraw")
    lazy var forgot_password_popup_image = WLImage(imageAssetName: "mail")
    lazy var money =  WLImage(imageAssetName: "Money")
    lazy var credit_card =  WLImage(imageAssetName: "CreditCard")
    lazy var info_circle =  WLImage(imageAssetName: "Info")
    lazy var gear =  WLImage(imageAssetName: "gear")
    lazy var bell =  WLImage(imageAssetName: "bell")
    lazy var identificationo_card_blue =  WLImage(imageAssetName: "IdentificationCardBlue")
    lazy var identificationo_card_red =  WLImage(imageAssetName: "IdentificationCardRed")
    lazy var identificationo_card_purple = WLImage(imageAssetName: "IdentificationCard")
    lazy var action_sheet_background =  WLImage(imageAssetName: "bg-ActionSheet")
    lazy var login_avatar =  WLImage(imageAssetName: "avatar")
    lazy var secret_question_wrong_info =  WLImage(imageAssetName: "Secret-Question-pop-up")
    lazy var bloke_alert =  WLImage(imageAssetName: "Bloke_Alert")
    lazy var user_circle_gear =  WLImage(imageAssetName: "UserCircleGear")
    lazy var x_square =  WLImage(imageAssetName: "XSquare")
    lazy var mobile_device =  WLImage(imageAssetName: "DeviceMobile")
    lazy var lock_key =  WLImage(imageAssetName: "LockKey")
    lazy var envelope_simple_open =  WLImage(imageAssetName: "EnvelopeSimpleOpen")
    lazy var toggle_right =  WLImage(imageAssetName: "ToggleRight")
    lazy var purple_medal =  WLImage(imageAssetName: "Medal")
    lazy var qr =  WLImage(imageAssetName: "QR")
    lazy var scanQr =  WLImage(imageAssetName: "scanQR")
    lazy var success_reset_password =  WLImage(imageAssetName: "reset_password_success")
    lazy var ellipse =  WLImage(imageAssetName: "ellipse")
    lazy var pop_up_icon_hand_shake =  WLImage(imageAssetName: "pop-up-icon-hand-shake")
    lazy var pencil =  WLImage(imageAssetName: "pencil")
    lazy var empty_zubizu_card =  WLImage(imageAssetName: "empty_zubizu_card")
    lazy var settings =  WLImage(imageAssetName: "settings")
    lazy var purpleWalletIcon =  WLImage(imageAssetName: "PurpleWalletIcon")
    lazy var totalWalletIcon =  WLImage(imageAssetName: "TotalWalletIcon")
    lazy var tr_qr_show =  WLImage(imageAssetName: "tr_qr_show")
    lazy var tr_qr_scan =  WLImage(imageAssetName: "tr_qr_scan")
    lazy var left_chevron =  WLImage(imageAssetName: "left")
    lazy var pop_up_icon_network =  WLImage(imageAssetName: "pop-up-icon-network")
    lazy var load_money_button_bg =  WLImage(imageAssetName: "load_money_button_bg")
    lazy var trash_icon =  WLImage(imageAssetName: "trash_icon")
    lazy var send_money = WLImage(imageAssetName: "send_money")
    lazy var ask_money = WLImage(imageAssetName: "ask_money")
    lazy var load_money_icon = WLImage(imageAssetName: "load_money_icon")
    lazy var qr_logo = WLImage(imageAssetName: "qr_logo")
    lazy var avatar_settings = WLImage(imageAssetName: "ic_profile_setting")
    lazy var language = WLImage(imageAssetName: "language")
    lazy var dgfin = WLImage(imageAssetName: "dgfin")
    lazy var dgfin_logo = WLImage(imageAssetName: "dgfin_logo")
    
    init() {}
}
protocol ImageCatalog {
    
    // Configuration Assets
    var logo_light: WLImage {get}
    var logo_dark: WLImage {get}
    var background_image: WLImage {get}
    var splash_screen: WLImage {get}

    // Static Assets
    var wallet_navigationbar_logo: WLImage {get}
    var search_icon: WLImage {get}
    var dummy_card: WLImage {get}
    var wallet: WLImage {get}
    var share_circle: WLImage {get}
    var home_screen_send_money: WLImage {get}
    var home_screen_spend_split: WLImage {get}
    var home_screen_banner_image: WLImage {get}
    var icon_empty_transaction: WLImage {get}
    var tab_bar_home_screen_tab_default: WLImage {get}
    var tab_bar_home_screen_tab_purple: WLImage {get}
    var tab_bar_transactions_tab_default: WLImage {get}
    var tab_bar_transactions_tab_purple: WLImage {get}
    var tab_bar_finance_tab_default: WLImage {get}
    var tab_bar_finance_tab_purple: WLImage {get}
    var tab_bar_my_profile_tab_default: WLImage {get}
    var tab_bar_my_profile_tab_purple: WLImage {get}
    var micro_credit_apply: WLImage {get}
    var micro_credit_not_login: WLImage {get}
    var waiting_transactions: WLImage {get}
    var transaction_history_not_login: WLImage {get}
    var offers: WLImage {get}
    var purple_circle_calander: WLImage {get}
    var u_money_withdraw: WLImage {get}
    var u_receipt: WLImage {get}
    var u_outgoing_transactions: WLImage {get}
    var u_incoming_transactions: WLImage {get}
    var u_split_the_spending: WLImage {get}
    var u_insurance: WLImage {get}
    var u_extra_limit: WLImage {get}
    var mastercard_icon: WLImage {get}
    var stored_card_master_card_icon: WLImage {get}
    var radiobutton_fill: WLImage {get}
    var radiobutton_empty: WLImage {get}
    var plus_button: WLImage {get}
    var zbz_cuzdan: WLImage {get}
    var cards_with_money: WLImage {get}
    var phone: WLImage {get}
    var checkbox_empty: WLImage {get}
    var checkbox_fill: WLImage {get}
    var backround_half: WLImage {get}
    var cards: WLImage {get}
    var stacks: WLImage {get}
    var gift: WLImage {get}
    var campaign: WLImage {get}
    var login_error: WLImage {get}
    var vakifbank_icon: WLImage {get}
    var pop_up_icon_successful: WLImage {get}
    var pop_up_icon_info: WLImage {get}
    var load_money_bank_account_info_tab_1: WLImage {get}
    var load_money_bank_account_info_tab_2: WLImage {get}
    var load_money_bank_account_info_tab_3: WLImage {get}
    var load_money_bank_account_info_tab_4: WLImage {get}
    var tik_image: WLImage {get}
    var notifications: WLImage {get}
    var notification_outline: WLImage {get}
    var clipboard_text: WLImage {get}
    var copy_simple: WLImage {get}
    var chat_circle: WLImage {get}
    var film_script: WLImage {get}
    var note: WLImage {get}
    var file: WLImage {get}
    var cookie: WLImage {get}
    var circle_wavy_question: WLImage {get}
    var sign_out: WLImage {get}
    var kyc_1: WLImage {get}
    var kyc_2: WLImage {get}
    var kyc_verify_identity: WLImage {get}
    var purple_ellipse: WLImage {get}
    var white_plus: WLImage {get}
    var purple_gradient: WLImage {get}
    var masterpass_logo: WLImage {get}
    var icon_Share: WLImage {get}
    var icon_Xmark: WLImage {get}
    var bank_icon: WLImage {get}
    var scanQR_first_image: WLImage {get}
    var scanQR_second_image: WLImage {get}
    var camera_image: WLImage {get}
    var receipt_icon: WLImage {get}
    var four_squares: WLImage {get}
    var calander_purple: WLImage {get}
    var calander: WLImage {get}
    var delete_icon: WLImage {get}
    var user_icon: WLImage {get}
    var pop_up_icon_hand: WLImage {get}
    var pop_up_icon_unsuccessful: WLImage {get}
    var qr_shadow: WLImage {get}
    var shopping_cart: WLImage {get}
    var invoice_payment: WLImage {get}
    var money_transfer: WLImage {get}
    var transaction_fee: WLImage {get}
    var cashback: WLImage {get}
    var cash_withdraw: WLImage {get}
    var forgot_password_popup_image: WLImage {get}
    var money: WLImage {get}
    var credit_card: WLImage {get}
    var info_circle: WLImage {get}
    var gear: WLImage {get}
    var bell: WLImage {get}
    var identificationo_card_blue: WLImage {get}
    var identificationo_card_red: WLImage {get}
    var identificationo_card_purple: WLImage {get}
    var action_sheet_background: WLImage {get}
    var login_avatar: WLImage {get}
    var secret_question_wrong_info: WLImage {get}
    var bloke_alert: WLImage {get}
    var user_circle_gear: WLImage {get}
    var x_square: WLImage {get}
    var mobile_device: WLImage {get}
    var lock_key: WLImage {get}
    var envelope_simple_open: WLImage {get}
    var toggle_right: WLImage {get}
    var purple_medal: WLImage {get}
    var qr: WLImage {get}
    var scanQr: WLImage {get}
    var success_reset_password: WLImage {get}
    var ellipse: WLImage {get}
    var pop_up_icon_hand_shake: WLImage {get}
    var pencil: WLImage {get}
    var empty_zubizu_card: WLImage {get}
    var settings: WLImage {get}
    var purpleWalletIcon: WLImage {get}
    var totalWalletIcon: WLImage {get}
    var tr_qr_scan: WLImage {get}
    var tr_qr_show: WLImage {get}
    var left_chevron: WLImage {get}
    var pop_up_icon_network: WLImage {get}
    var load_money_button_bg: WLImage {get}
    var trash_icon: WLImage {get}
    var send_money: WLImage {get}
    var ask_money: WLImage {get}
    var load_money_icon: WLImage {get}
    var qr_logo: WLImage {get}
    var avatar_settings: WLImage {get}
    var language: WLImage {get}
    var dgfin: WLImage {get}
    var dgfin_logo: WLImage {get}
}