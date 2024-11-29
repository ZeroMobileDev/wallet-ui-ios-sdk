//
//  AnimationView.swift
//  WalletUISdk
//
//  Created by Yasin Çetin on 22.11.2024.
//

import Foundation
import SwiftUI
import Lottie

public struct AnimationView: UIViewRepresentable {
  var name: AnimationFileName
  var loopMode: LottieLoopMode

  var animationView = LottieAnimationView()

  public init(
    name: AnimationFileName,
    loopMode: LottieLoopMode = .loop
  ) {
    self.name = name
    self.loopMode = loopMode
      print("AnimationTest => AnimationView => init")
  }

  public func makeUIView(context: UIViewRepresentableContext<AnimationView>) -> UIView {
      print("AnimationTest => AnimationView => makeUIView")
    let view = AnimationUIView(
      name: self.name,
      loopMode: self.loopMode
    )
    return view
  }

  public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<AnimationView>) {}
}
