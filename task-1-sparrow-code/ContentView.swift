import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                ScrollView(.vertical) {
                    Rectangle()
                        .frame(height: 1000)
                        .foregroundColor(.clear)
                }
                .safeAreaInset(edge: .bottom) {
                    Rectangle()
                        .frame(height: 50)
                        .foregroundColor(.red)
                }
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
