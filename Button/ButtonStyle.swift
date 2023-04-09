//
//  SwiftUIView.swift
//  
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI
import SpriteKit

struct ButtonStyle: View {
    
    var body: some View {
        VStack{
            Spacer()
            Button(action: {
                //print("Hello button tapped!")
            }) {
                Text("Start")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                //                .padding(.horizontal, 45)
                //                .padding(.vertical, 20)
                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
                    .border(Color.black, width: 5)
                    .cornerRadius(5)
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 180, height: 85)
            
            Spacer()
        }
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle()
    }
}
