import SwiftUI

struct ContentView: View {
    
    var bg: String = "content"
    
    var body: some View {
        NavigationView {
            ZStack{
                // Comment: 이미지에 들어가는 에셋들의 이름을 변수에 따로 저장해서 쓰는게 일반적이에요. 에셋 이름을 일일이 치다보면 오타가 생길 수 있는데 텍스트라 오류는 안나고, 실행해서 확인해보고 이미지가 제대로 뜨지 않는다면 그제야 오타를 인지하는 경우가 생겨요. 바로바로 확인할 수 있다면 좋겠지만, 그렇지 않은 경우 발생하는 오류에 대비하면 좋겠죠!! 또 반복해서 쓰이는 이미지 에셋이라면 코드를 작성하는데 효율도 좋아져요 :)
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
