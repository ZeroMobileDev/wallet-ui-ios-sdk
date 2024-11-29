//
//  AnimationUIView.swift
//  WalletUISdk
//
//  Created by Yasin Çetin on 22.11.2024.
//

import Lottie
import UIKit

public class AnimationUIView: UIView {
  private var animationView = LottieAnimationView()
  var name: AnimationFileName
  var loopMode: LottieLoopMode

  public init(
    name: AnimationFileName,
    loopMode: LottieLoopMode = .loop,
    frame: CGRect = .zero
  ) {
    self.name = name
    self.loopMode = loopMode
    super.init(frame: frame)
    self.configureView()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func configureView() {
      
      print("AnimationTest => AnimationUIView => configureView")

    self.animationView.animation = LottieAnimation.named(self.name.rawValue, bundle: WLResourcesBundle.current ?? Bundle.main)
    self.animationView.contentMode = .scaleAspectFit
    self.animationView.loopMode = self.loopMode
    self.animationView.backgroundBehavior = .pauseAndRestore
    self.animationView.play()
      print("AnimationTest => AnimationUIView => configureView")
    self.animationView.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(self.animationView)

    NSLayoutConstraint.activate([
      self.animationView.heightAnchor.constraint(equalTo: self.heightAnchor),
      self.animationView.widthAnchor.constraint(equalTo: self.widthAnchor)
    ])
  }
}
