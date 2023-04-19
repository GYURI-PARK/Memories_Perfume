//
//  FinalView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/19.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        ZStack{
            Image("bg")
            
            Text("Hello World")
                .fontWeight(.bold)
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView().previewInterfaceOrientation(.landscapeLeft)
    }
}
