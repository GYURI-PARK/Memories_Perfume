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
                    .progressViewStyle(CircularProgressViewStyle(tint: Color(0x498C5A)))
                    .scaleEffect(10)
            }
            Spacer()
            
            Text(viewModel.loadingTexts[currentLoadingTextIndex])
                .font(.system(size: 50))
                .fontWeight(.bold)
                .lineSpacing(30)
            Spacer(minLength: 200)
        }
        .onAppear {
            startFakeNetworkCall()
        }
    }

    func startFakeNetworkCall() {
        let delay = Double(viewModel.loadingTexts[currentLoadingTextIndex].count) / 20
        // 10단어당 1초
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
        "Your emotions are being turned into perfume.",
        "The Beginning, Main, and End \n that you previously selected  represent the \n Top/Middle/Base Notes of a fragrance.",
        "Shall we spray the perfume that reflects your emotions?"
    ]
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView().previewInterfaceOrientation(.landscapeLeft)
    }
}
