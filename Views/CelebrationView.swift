//
//  CelebrationView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//
import SwiftUI
import ConfettiSwiftUI

struct CelebrationView: View {
    @State private var scale = 0.8

    @State private var trigger = 0

    var body: some View {

        ZStack {

            AnimatedBackground()

            VStack(spacing: 30) {

                Text("YOU SAID YES ❤️")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)

                Image(systemName: "heart.fill")
                    .font(.system(size: 120))
                    .foregroundColor(.red)
                    .scaleEffect(scale)
            }
        }
        .confettiCannon(
            trigger: $trigger
        )
        .onAppear {

            trigger += 1

            withAnimation(
                .easeInOut(duration: 5)
                .repeatForever(autoreverses: true)
            ) {
                scale = 1.2
            }
        }
    }
}
