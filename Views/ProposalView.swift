//
//  ProposalView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//

import SwiftUI
import UIKit

struct ProposalView: View {

    let yesAction: () -> Void

    @State private var noOffset = CGSize.zero

    var body: some View {

        ZStack {

            AnimatedBackground()

            VStack(spacing: 30) {

               
                VStack(spacing: 15) {

                    Image(systemName: "heart.circle.fill")
                        .font(.system(size: 100))
                        .foregroundColor(.pink)

                    Text("\(AppData.herName),Will You Be Mine Forever?")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                    
                Button("YES ❤️") {

                    UIImpactFeedbackGenerator(
                        style: .heavy
                    ).impactOccurred()

                    yesAction()

                }
                .padding()
                .background(.green)
                .clipShape(Capsule())

                Button("NO 😭") {

                    noOffset = CGSize(
                        width: .random(in: -150...150),
                        height: .random(in: -250...250)
                    )
                }
                .offset(noOffset)
            }
        }
    }
}
