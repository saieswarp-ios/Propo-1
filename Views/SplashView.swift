//
//  SplashView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//
import SwiftUI

struct SplashView: View {

    let next: () -> Void

    var body: some View {

        ZStack {

            AnimatedBackground()

            VStack(spacing: 30) {

                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.pink)

                Text("A Special Surprise ❤️")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)

                GlowButton(
                    title: "Tap To Begin",
                    action: next
                )
            }
        }
    }
}
