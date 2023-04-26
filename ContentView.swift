import SwiftUI

struct ContentView: View {
    
    var bg: String = "content"
    // Comment: asset이미지 변수처리
    
    var body: some View {
        NavigationView {
            ZStack{
        
                Image(bg)
                    .resizable()
                    .scaledToFill()
                // Comment: 이미지 사이즈 조절
                
                NavigationLink(
                    destination: ColorChoice())
                {
                    Text("Start")
                        .font(.system(size: 50).bold())
                        .foregroundColor(.white)
                        .padding(.horizontal, 80)
                        .padding(.vertical, 25)
                        .background(Color.black)
                        .cornerRadius(50)
                        .shadow(radius: 10)
                }
                .buttonStyle(PlainButtonStyle())
                .offset(x: 0, y: 350)
                
                // Comment: 모든 기기에 일관된 뷰를 위해선 offset보다 HStack, VStack 지향
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
