//
//  StoryView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//

import SwiftUI

struct StoryView: View {

    let next: () -> Void

    var body: some View {

        ZStack {

            AnimatedBackground()

            VStack(spacing: 30) {

                TypewriterText(
                    text: "\(AppData.herName), every moment with you makes life beautiful ❤️"
                )

                GlowButton(
                    title: "Continue",
                    action: next
                )
            }
            .padding()
        }
    }
}
