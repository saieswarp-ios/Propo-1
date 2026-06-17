//
//  FloatingHeartsView.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//

import SwiftUI

struct FloatingHeartsView: View {

    @State private var hearts: [Heart] = []

    var body: some View {

        GeometryReader { geo in

            ZStack {

                ForEach(hearts) { heart in

                    Image(systemName: "heart.fill")
                        .foregroundColor(.pink.opacity(0.7))
                        .font(.system(size: heart.size))
                        .position(
                            x: heart.x,
                            y: heart.y
                        )
                }
            }
            .onAppear {

                for _ in 0..<25 {

                    hearts.append(
                        Heart(
                            x: .random(in: 0...geo.size.width),
                            y: .random(in: 0...geo.size.height),
                            size: .random(in: 15...35)
                        )
                    )
                }
            }
        }
    }
}

struct Heart: Identifiable {

    let id = UUID()
    let x: CGFloat
    let y: CGFloat
    let size: CGFloat
}
