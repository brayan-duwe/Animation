import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap me!") {
            // animationAmount += 1
        }
        .padding(50)
        .background(.blue)
        .foregroundStyle(Color.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.blue)
                .scaleEffect(animationAmount)
                .opacity(1.5 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 1.5
        }
    }
}

#Preview {
    ContentView()
}
