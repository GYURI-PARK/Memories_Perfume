//
//  LoadingView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/17.
//

import SwiftUI

struct LoadingView: View {
    @State private var isLoading = true
    @State var opacity = 0.0
    @ObservedObject var viewModel = LoadingViewModel()

    var body: some View {
        ZStack {
            if isLoading {
                MyLoadingView(viewModel: viewModel) {
                    isLoading = false
                }
            }
            if !isLoading {
                SpreadView()
                    .opacity(opacity)
                    .onAppear {
                        let baseAnimation = Animation.easeInOut(duration: 1)
                        let repeated = baseAnimation.repeatCount(1)

                        withAnimation(repeated) {
                            opacity = 1.0
                        }
                    }
                    .transition(.opacity)
            }
        }
        .onAppear { startFakeNetworkCall() }
    }

    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 25) {
            isLoading = false
        }
    }
}

struct MyLoadingView: View {
    @ObservedObject var viewModel: LoadingViewModel
    @State var currentLoadingTextIndex = 0
    var completion: () -> Void

    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                    .scaleEffect(5)
            }
            Text(viewModel.loadingTexts[currentLoadingTextIndex])
                .font(.system(size: 50))
                .fontWeight(.bold)
            Spacer(minLength: 200)
        }
        .onAppear {
            startFakeNetworkCall()
        }
    }

    func startFakeNetworkCall() {
        let delay = Double(viewModel.loadingTexts[currentLoadingTextIndex].count) / 10
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            if currentLoadingTextIndex < viewModel.loadingTexts.count - 1 {
                currentLoadingTextIndex += 1
                startFakeNetworkCall()
            } else {
                completion()
            }
        }
    }
}

class LoadingViewModel: ObservableObject {
    let loadingTexts = [
        "당신이 느꼈던 감정들이 향수로 만들어지고 있습니다."
//        "향은 우리를 쉽게 추억으로 데려다 놓습니다.",
//        "특정 향을 맡으면 예전 있었던 장소로 돌아가는 기분이 들기도 합니다.",
//        "향수는 Top / Middle / Base가 있습니다.",
//        "그리고 각각의 Note에는 정해진 역할이 있죠",
//        "당신이 앞에서 입력한 Beginning / Main / End는 \n 여기서 각각 향수의 Top / Middle / Base가 됩니다.",
//        "그럼 당신의 추억 향수를 뿌리러 가볼까요?"
    ]
 
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView().previewInterfaceOrientation(.landscapeLeft)
    }
}
