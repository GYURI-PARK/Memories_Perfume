import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            //BackgroundView()
            
            HStack{
                Spacer()
                
                VStack(alignment: .leading){
                    Spacer()
                    
                    Text("Scent Visualization ;")
                        .font(.system(size: 70))
                        .fontWeight(.semibold)
                    
                    Spacer(minLength: 300)
                    
                    Button("Start"){
                        // colorchoice로 가야됨
                    }
                    .font(.system(size: 30).bold())
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 15)
                    .background(Color.black)
                    .cornerRadius(25)
                    .shadow(radius: 10)
                    
                    Spacer()
                    
                    Text("See")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                        
                    Text("Your")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                    Text("Perfume")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                Spacer()
                
                Image("bottle")
                Spacer()
            }
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
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
