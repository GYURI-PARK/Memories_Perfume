//
//  SpreadView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/17.
//


import SwiftUI
import SpriteKit

struct SpreadView: View {
    @ObservedObject var dataModel = DataModel.instance
    var scene = MergeScene()

    @State var isFinalViewActive = false
    @State var opacity = 0.0

    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
                .onAppear {
                    scene.model = dataModel
                    DispatchQueue.main.asyncAfter(deadline: .now() + 19) {
                        self.isFinalViewActive = true
                    }
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeated = baseAnimation.repeatCount(1)

                    withAnimation(repeated) {
                        opacity = 1.0
                    }
                }.transition(.opacity)

            if isFinalViewActive {
                withAnimation(.easeInOut(duration: 0.5)) {
                    FinalView()
                        .opacity(1.0)
                }
            } else {
                FinalView()
                    .opacity(0.0)
            }
        }
    }
}


struct SpreadView_Previews: PreviewProvider {
    static var previews: some View {
        SpreadView().previewInterfaceOrientation(.landscapeLeft)
    }
}
