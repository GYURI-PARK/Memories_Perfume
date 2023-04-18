//
//  SpreadView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/17.
//

import SwiftUI
import SpriteKit

struct SpreadView: View {
    var scene = MergeScene()
    
    var body: some View {
        SpriteView(scene: scene)
            .ignoresSafeArea()
    }
}

struct SpreadView_Previews: PreviewProvider {
    static var previews: some View {
        SpreadView().previewInterfaceOrientation(.landscapeLeft)
    }
}
