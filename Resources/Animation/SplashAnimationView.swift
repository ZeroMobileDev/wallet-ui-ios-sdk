//
//  SplashAnimationView.swift
//  WalletUISdk
//
//  Created by bilal Alptekin on 5.12.2024.
//

import Foundation
import Lottie
import SwiftUI

public struct SplashAnimationView: UIViewRepresentable {
    var name: AnimationFileName
    var loopMode: LottieLoopMode
    var onAnimationFinished: (() -> Void)?
    // when finished

    var animationView = LottieAnimationView()

    public init(
        name: AnimationFileName,
        loopMode: LottieLoopMode = .loop,
        onAnimationFinished: (() -> Void)? = nil
    ) {
        self.name = name
        self.loopMode = loopMode
        self.onAnimationFinished = onAnimationFinished
    }

    public func makeUIView(context: UIViewRepresentableContext<SplashAnimationView>) -> UIView {
        let view = SplashAnimationUIView(
            name: self.name,
            loopMode: self.loopMode,
            onAnimationFinished: self.onAnimationFinished
        )
        return view
    }

    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SplashAnimationView>) {}
}
