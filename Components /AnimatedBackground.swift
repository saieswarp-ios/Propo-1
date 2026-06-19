//
//  AnimatedBackground.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//
import SwiftUI

struct AnimatedBackground: View {

    @State private var animate = false

    var body: some View {

        LinearGradient(
            colors: [
                .purple,
                .pink,
                .black
            ],
            startPoint: animate ? .topLeading : .bottomTrailing,
            endPoint: animate ? .bottomTrailing : .topLeading
        )
        .ignoresSafeArea()
        .animation(
            .easeInOut(duration: 4)
                .repeatForever(),
            value: animate
        )
        .onAppear {
            animate = true
        }
    }
}
#Preview {
    AnimatedBackground()
}
