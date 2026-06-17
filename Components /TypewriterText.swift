//
//  TypewriterText.swift
//  Propo-1
//
//  Created by IOS DEV on 17/06/26.
//
import SwiftUI

struct TypewriterText: View {

    let text: String

    @State private var displayed = ""

    var body: some View {

        Text(displayed)
            .foregroundColor(.white)
            .font(.title2)
            .multilineTextAlignment(.center)

            .onAppear {

                displayed = ""

                for (index,char) in text.enumerated() {

                    DispatchQueue.main.asyncAfter(
                        deadline: .now() + Double(index) * 0.05
                    ) {
                        displayed.append(char)
                    }
                }
            }
    }
}
