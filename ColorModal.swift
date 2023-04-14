//
//  ColorModal.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/14.
//

import SwiftUI

struct ColorModal: View {
    
    //@Binding private var showSheet: Bool
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("Pick ONE")
                .font(.system(size: 100))
                .fontWeight(.bold)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 40){
                ScrollView(.horizontal, showsIndicators: true){
                    HStack(spacing: 40){
                        Button(action: {
                            // button action here
                        }){
                            Circle()
                                .fill(
                                    RadialGradient(
                                        gradient: Gradient(colors: [Color(0xFF9D94), Color(0xFF5747), Color(0x802B24), Color(0xCC4639)]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    )
                                ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xFFFD25), Color(0xFFD432), Color(0xFFA525), Color(0xA64F03)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xBED624), Color(0x9BBF17), .green, Color(0x1F643C)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0x94BCE0), Color(0x66ADD9), Color(0x0468BF), Color(0xD9D9E1)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xE4EAF2), Color(0x949BA6), Color(0x565759), .blue]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct ColorModal_Previews: PreviewProvider {
    
    @Binding private var showSheet: Bool
    
    static var previews: some View {
        ColorModal().previewInterfaceOrientation(.landscapeLeft)
    }
}
