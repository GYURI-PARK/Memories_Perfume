import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}


extension Color {
    init(_ hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
        red: Double((hex>>16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
        blue: Double((hex >> 0) & 0xFF) / 255,
        opacity: alpha
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
