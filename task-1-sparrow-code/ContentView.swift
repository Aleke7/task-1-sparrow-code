import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                ScrollView(.vertical) {
                    VStack {
                        ForEach(0..<100) {_ in
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                RoundedRectangle(cornerSize: .zero)
                    .frame(height: 50)
                    .foregroundColor(.red)
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
