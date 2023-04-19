//
//  ColorModal.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/14.
//

import SwiftUI

struct ColorModal: View {
    
    @Binding var showSheet: Bool
    @Binding var selectedColor1: Color
    @Binding var selectedColor2: Color
    @Binding var selectedColor3: Color
    @Binding var orderNum: Int
    
    var body: some View {
        
        VStack{
//            Spacer()
//            Text("Choose One Color")
//                .font(.system(size: 100))
//                .fontWeight(.bold)
//
            Spacer()
            
            HStack(alignment: .center, spacing: 40){
                ScrollView(.horizontal, showsIndicators: true){
                    HStack(spacing: 40){
                        Button(action: {
                            // button action here
                            self.showSheet = false
                            
                            if orderNum == 1 {
                                selectedColor1 = .red
                            } else if orderNum == 2 {
                                selectedColor2 = .red
                            } else if orderNum == 3 {
                                selectedColor3 = .red
                            }
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
                            self.showSheet = false
                            if orderNum == 1 {
                                selectedColor1 = .yellow
                            } else if orderNum == 2 {
                                selectedColor2 = .yellow
                            } else if orderNum == 3 {
                                selectedColor3 = .yellow
                            }
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
                            self.showSheet = false
                            if orderNum == 1 {
                                selectedColor1 = .green
                            } else if orderNum == 2 {
                                selectedColor2 = .green
                            } else if orderNum == 3 {
                                selectedColor3 = .green
                            }
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
                            self.showSheet = false
                            if orderNum == 1 {
                                selectedColor1 = .blue
                            } else if orderNum == 2 {
                                selectedColor2 = .blue
                            } else if orderNum == 3 {
                                selectedColor3 = .blue
                            }
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
                            self.showSheet = false
                            if orderNum == 1 {
                                selectedColor1 = .gray
                            } else if orderNum == 2 {
                                selectedColor2 = .gray
                            } else if orderNum == 3 {
                                selectedColor3 = .gray
                            }
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
    static var previews: some View {
        ColorModal(showSheet: .constant(false), selectedColor1: .constant(Color.white), selectedColor2: .constant(Color.white), selectedColor3: .constant(Color.white), orderNum: .constant(0))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
