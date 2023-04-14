//
//  BackgroundView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct BackgroundView: View {
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(0xCECECE), .blue, .red]), startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    @State static var selectedColor = Color.white
    
    static var previews: some View {
        BackgroundView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
