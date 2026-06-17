//
//  MemoryView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//

import SwiftUI

struct MemoryView: View {

    let next: () -> Void

    var body: some View {

        ZStack {

            AnimatedBackground()

            VStack {

                Text("Our Memories")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                ScrollView(.horizontal) {

                    HStack {

                        ForEach(1...5,id:\.self) { _ in

                            RoundedRectangle(
                                cornerRadius: 25
                            )
                            .fill(.white.opacity(0.3))
                            .frame(
                                width: 250,
                                height: 350
                            )
                        }
                    }
                }

                GlowButton(
                    title: "Next",
                    action: next
                )
            }
        }
    }
}
