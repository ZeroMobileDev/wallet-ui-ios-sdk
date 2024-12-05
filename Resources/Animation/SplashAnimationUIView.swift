//
//  SplashAnimationView.swift
//  WalletUISdk
//
//  Created by bilal Alptekin on 5.12.2024.
//

import Lottie
import UIKit

public class SplashAnimationUIView: UIView {
    private var animationView = LottieAnimationView()
    var name: AnimationFileName
    var loopMode: LottieLoopMode
    var onAnimationFinished: (() -> Void)?

    public init(
        name: AnimationFileName,
        loopMode: LottieLoopMode = .loop,
        frame: CGRect = .zero,
        onAnimationFinished: (() -> Void)? = nil
    ) {
        self.name = name
        self.loopMode = loopMode
        self.onAnimationFinished = onAnimationFinished
        super.init(frame: frame)
        self.configureView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureView() {
        // Set up the animation view
        self.animationView = LottieAnimationView(
            name: self.name.rawValue,
            bundle: WLResourcesBundle.current ?? Bundle.main
        )
        self.animationView.contentMode = .scaleAspectFill
        self.animationView.loopMode = self.loopMode
        self.animationView.backgroundBehavior = .pauseAndRestore
        self.animationView.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(self.animationView)
      
        NSLayoutConstraint.activate([
            self.animationView.heightAnchor.constraint(equalTo: self.heightAnchor),
            self.animationView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.animationView.topAnchor.constraint(equalTo: self.topAnchor),
            self.animationView.widthAnchor.constraint(equalTo: self.widthAnchor)
        ])

        self.animationView.play { [weak self] finished in
            if finished {
                self?.onAnimationFinished?()
            }
        }
    }
}
