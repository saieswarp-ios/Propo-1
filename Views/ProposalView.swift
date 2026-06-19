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

                    Text("\(AppData.herName), Will You Be Mine Forever?")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }

                // YES BUTTON
                Button("YES ❤️") {

                    UIImpactFeedbackGenerator(
                        style: .heavy
                    ).impactOccurred()

                    yesAction()
                }
                .padding()
                .frame(width: 200)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())

                // NO BUTTON
                Button("NO 😭") {

                    withAnimation(.snappy) {

                        noOffset = CGSize(
                            width: .random(in: -150...150),
                            height: .random(in: -250...250)
                        )
                    }
                }
                .padding()
                .frame(width: 200)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .offset(noOffset)   // MUST BE LAST
            }
            .padding()
        }
    }
}

#Preview {
    ProposalView {
        print("YES tapped")
    }
}
