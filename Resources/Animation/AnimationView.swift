//
//  AnimationView.swift
//  WalletUISdk
//
//  Created by Yasin Çetin on 22.11.2024.
//

import Foundation
import Lottie
import SwiftUI

public struct AnimationView: UIViewRepresentable {
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
        print("AnimationTest => AnimationView => init")
    }

    public func makeUIView(context: UIViewRepresentableContext<AnimationView>) -> UIView {
        print("AnimationTest => AnimationView => makeUIView")
        let view = AnimationUIView(
            name: self.name,
            loopMode: self.loopMode,
            onAnimationFinished: self.onAnimationFinished
        )
        return view
    }

    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<AnimationView>) {}
}
