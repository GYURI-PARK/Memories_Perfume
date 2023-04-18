//
//  ParticleChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ParticleChoice: View {
    
    @Binding var selectedColor1: Color
    @Binding var selectedColor2: Color
    @Binding var selectedColor3: Color
    
    @State var showSheet = false
    @State var selectedImg1 = ""
    @State var selectedImg2 = ""
    @State var selectedImg3 = ""
    @State var orderNum = 0
    
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                
                Text("Select Mood Emoticon")
                    .font(.system(size: 100))
                    .fontWeight(.black)
                    .padding(.vertical, 25)
                
                Spacer()
                
                HStack{
                    VStack{
                        Text("Top Note")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                        
                        Text("Around the beginning of that memory, \n             Choose your mood color")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(0xCECECE))
                            .frame(width: 400, height: 60)
                        
                        ZStack{
                            Circle()
                                .fill(selectedColor1)
                                .frame(width: 300, height: 300)
                                .shadow(color: Color(0xCECECE),radius: 10)
                                .padding(.top, 50)
                                .foregroundColor(.white)
                            
                            Image(selectedImg1)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .scaleEffect(2)
                                .offset(x: 0, y:25)
                            
                            Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor((selectedImg1.isEmpty ? Color(0xCECECE) : Color.clear))
                                .onTapGesture {
                                    showSheet = true
                                    orderNum = 1
                                }
                                .sheet(isPresented: $showSheet) {
                                    ImgModal(showSheet: self.$showSheet, selectedImg1: self.$selectedImg1, selectedImg2: self.$selectedImg2, selectedImg3: self.$selectedImg3, orderNum: self.$orderNum)
                                }
                        }
                    }
                    
                    VStack{
                        Text("Middle Note")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                        
                        Text("      What color mood \n does the memory have?")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(0xCECECE))
                            .frame(width: 400, height: 60)
                        
                        ZStack{
                            Circle()
                                .fill(selectedColor2)
                                .frame(width: 300, height: 300)
                                .shadow(color: Color(0xCECECE),radius: 10)
                                .padding(.top, 50)
                                .foregroundColor(.white)
                            
                            Image(selectedImg2)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .scaleEffect(2)
                                .offset(x: 0, y:25)
                            
                            Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor((selectedImg2.isEmpty ? Color(0xCECECE) : Color.clear))
                                .onTapGesture {
                                    showSheet = true
                                    orderNum = 2
                                }
                                .sheet(isPresented: $showSheet) {
                                    ImgModal(showSheet: self.$showSheet, selectedImg1: self.$selectedImg1, selectedImg2: self.$selectedImg2, selectedImg3: self.$selectedImg3, orderNum: self.$orderNum)
                                }
                        }
                        
                    }
                    
                    VStack{
                        Text("Base Note")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                        
                        Text("      What color does \nthe memory leave you?")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(0xCECECE))
                            .frame(width: 400, height: 60)
                        
                        ZStack{
                            Circle()
                                .fill(selectedColor3)
                                .frame(width: 300, height: 300)
                                .shadow(color: Color(0xCECECE),radius: 10)
                                .padding(.top, 50)
                                .foregroundColor(.white)
                            
                            Image(selectedImg3)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .scaleEffect(2)
                                .offset(x: 0, y:25)
                            
                            Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor((selectedImg3.isEmpty ? Color(0xCECECE) : Color.clear))
                            
                                .onTapGesture {
                                    showSheet = true
                                    orderNum = 3
                                }
                                .sheet(isPresented: $showSheet) {
                                    ImgModal(showSheet: self.$showSheet, selectedImg1: self.$selectedImg1, selectedImg2: self.$selectedImg2, selectedImg3: self.$selectedImg3, orderNum: self.$orderNum)
                                }
//                            if !selectedImg3.isEmpty {
//                                NavigationLink(destination: LoadingView()) {
//                                    EmptyView()
//                                }
//                            }
                        }
                    }
                }
                Spacer()
                Spacer()
                
            }
        }
    }
}

struct ParticleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ParticleChoice(selectedColor1: .constant(Color.white), selectedColor2: .constant(Color.white), selectedColor3: .constant(Color.white), showSheet: false).previewInterfaceOrientation(.landscapeLeft)
    }
}
