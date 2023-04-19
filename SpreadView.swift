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
    
    var body: some View {
        SpriteView(scene: scene)
            .ignoresSafeArea()
            .onAppear {
                scene.model = dataModel
                print(scene.model.emojiNum)
            }
    }
    
}

struct SpreadView_Previews: PreviewProvider {
    static var previews: some View {
        SpreadView().previewInterfaceOrientation(.landscapeLeft)
    }
}
