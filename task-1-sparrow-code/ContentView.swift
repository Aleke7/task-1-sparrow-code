import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                ScrollView(.vertical) {
                    GeometryReader { geometry in
                        VStack {
                            ForEach(0..<30) { index in
                                Spacer()
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .overlay(
                    VStack {
                        Spacer()
                        Rectangle()
                            .frame(height: 50)
                            .foregroundColor(.red)
                    }
                    
                )
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
