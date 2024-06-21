import SwiftUI

struct ContentView: View {
    @State private var isMatched = false
    
    var body: some View {
        VStack {
            if isMatched {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace, properties: .position)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
            } else {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: namespace, properties: .opacity)
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
            }
            
            Button("Toggle") {
                withAnimation {
                    isMatched.toggle()
                }
            }
        }
    }
}
