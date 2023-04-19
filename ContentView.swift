import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                
                Image("main")
                
                NavigationLink(
                    destination: ColorChoice())
                {
                    Text("Start")
                        .font(.system(size: 50).bold())
                        .foregroundColor(.white)
                        .padding(.horizontal, 60)
                        .padding(.vertical, 25)
                        .background(Color.black)
                        .cornerRadius(25)
                        .shadow(radius: 10)
                }
                .buttonStyle(PlainButtonStyle())
                .offset(x: 470, y: 330)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
//        .navigationBarHidden(true)
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
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
