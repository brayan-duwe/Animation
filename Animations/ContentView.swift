import SwiftUI

struct ContentView: View {
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false

    
    var body: some View {
        VStack{
            Button("Tap me") {
                withAnimation {
                    enabled.toggle()
                }
            }
            .foregroundStyle(.black)
            if enabled {
                Rectangle()
                    .fill(.green)
                    .frame(width: 200, height: 200)
                    .transition(AsymmetricTransition(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    ContentView()
}
