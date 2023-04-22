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
            Spacer()
            
            HStack(alignment: .center, spacing: 40){
                    
                VStack(spacing: 50){
                    HStack(spacing: 80){
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
                                        gradient: Gradient(colors: [Color(0xFFDCDC), Color(0xFF8282),Color(0xD90000), Color(0xD90000), Color(0xD90000)]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    )
                                ).frame(width: 130)
                        }
                        
                        Button(action: {
                            // button action here
                            self.showSheet = false
                            if orderNum == 1 {
                                selectedColor1 = .orange
                            } else if orderNum == 2 {
                                selectedColor2 = .orange
                            } else if orderNum == 3 {
                                selectedColor3 = .orange
                            }
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xFFE4CB), Color(0xFF8A10), Color(0xFF8A00), Color(0xE77600)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 130)
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
                                    gradient: Gradient(colors: [Color(0xFFF9BF), Color(.yellow), Color(0xFFF100), Color(0xFFF100)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 130)
                        }
                    }
                    
                    VStack(spacing: 50){
                        HStack(spacing: 80){
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
                                        gradient: Gradient(colors: [Color(0xE9FFE9), Color(0x8BDE89), Color(0x039E00), Color(0x039E00)]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    )
                                ).frame(width: 130)
                            }
                            
                            Button(action: {
                                // button action here
                                self.showSheet = false
                                if orderNum == 1 {
                                    selectedColor1 = .cyan
                                } else if orderNum == 2 {
                                    selectedColor2 = .cyan
                                } else if orderNum == 3 {
                                    selectedColor3 = .cyan
                                }
                            }){
                                Circle().fill(
                                    RadialGradient(
                                        gradient: Gradient(colors: [Color(0xD9F3FB), Color(0x6FD1F0), Color(0x03B3EA), .blue]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    )
                                ).frame(width: 130)
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
                                        gradient: Gradient(colors: [Color(0xE2E5FF), Color(0x7280FF), Color(0x031CFB), Color(0x031CFB), .blue]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    )
                                ).frame(width: 130)
                            }
                        }
                        VStack(spacing: 50){
                            HStack(spacing: 80){
                                
                                Button(action: {
                                    // button action here
                                    self.showSheet = false
                                    if orderNum == 1 {
                                        selectedColor1 = .purple
                                    } else if orderNum == 2 {
                                        selectedColor2 = .purple
                                    } else if orderNum == 3 {
                                        selectedColor3 = .purple
                                    }
                                }){
                                    Circle().fill(
                                        RadialGradient(
                                            gradient: Gradient(colors: [Color(0xE4EAF2), Color(0x9A6AD7), Color(0x5C00D1), Color(0x5C00D1)]),
                                            center: .center,
                                            startRadius: 0,
                                            endRadius: 150
                                        )
                                    ).frame(width: 130)
                                }
                                
                                Button(action: {
                                    // button action here
                                    self.showSheet = false
                                    if orderNum == 1 {
                                        selectedColor1 = .pink
                                    } else if orderNum == 2 {
                                        selectedColor2 = .pink
                                    } else if orderNum == 3 {
                                        selectedColor3 = .pink
                                    }
                                }){
                                    Circle().fill(
                                        RadialGradient(
                                            gradient: Gradient(colors: [Color(0xFEDBFA), Color(0xF386E8), Color(0xE300CD), Color(0xE300CD)]),
                                            center: .center,
                                            startRadius: 0,
                                            endRadius: 150
                                        )
                                    ).frame(width: 130)
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
                                    ).frame(width: 130)
                                }
                            }
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
