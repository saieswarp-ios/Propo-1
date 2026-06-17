//
//  ContentView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//
import SwiftUI

struct ContentView: View {

    @State private var stage: ProposalStage = .splash

    var body: some View {

        switch stage {

        case .splash:

            SplashView {
                withAnimation {
                    stage = .story
                }
            
            }

        case .story:

            StoryView {
                withAnimation {
                    stage = .memories
                }
            }

        case .memories:

            MemoryView {
                withAnimation {
                    stage = .proposal
                }
            }
        case .proposal:

            ProposalView {
                withAnimation {
                    stage = .celebration
                }
            }

        case .celebration:

            CelebrationView()
        }
    }
}
