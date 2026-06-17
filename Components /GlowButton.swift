//
//  GlowButton.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//
import SwiftUI

struct GlowButton: View {

    var title: String
    var action: () -> Void

    var body: some View {

        Button(action: action) {

            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 250)
                .background(.pink)
                .clipShape(Capsule())
                .shadow(color: .pink, radius: 15)
        }
    }
}
