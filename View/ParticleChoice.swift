//
//  ParticleChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ParticleChoice: View {
    
    @State var dataModel = DataModel.instance
    @Binding var selectedColor1: Color
    @Binding var selectedColor2: Color
    @Binding var selectedColor3: Color
    
    @State var showSheet = false
    @State var selectedImg1 = ""
    @State var selectedImg2 = ""
    @State var selectedImg3 = ""
    @State var orderNum = 0
    @State private var shouldNavigate = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            NavigationLink(destination: LoadingView(), isActive: $shouldNavigate) {
                EmptyView()
            }
            VStack{
                Spacer()
                
                Text("Select Mood Emoticon")
                    .font(.system(size: 100))
                    .fontWeight(.heavy)
                    .padding(.vertical, 25)
                
                Spacer()
                
                Text("Please choose EMOTICON that represent the emotions you feel \n when recalling that memory, based on the flow of time.")
                    .fontWeight(.semibold)
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(0x498C5A))
                    .lineSpacing(15)
                
                Spacer(minLength: 100)
                
                HStack{
                    VStack{
                        Text("Beginnig")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                            .frame(maxWidth: .infinity)

                        
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
                                    DataModel.instance.emojiNum.append("\(selectedImg1)")
                                }
                                .sheet(isPresented: $showSheet) {
                                    ImgModal(showSheet: self.$showSheet, selectedImg1: self.$selectedImg1, selectedImg2: self.$selectedImg2, selectedImg3: self.$selectedImg3, orderNum: self.$orderNum)
                                }
                        }
                    }
                    
                    VStack{
                        Text("Main")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                            .frame(maxWidth: .infinity)
                        
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
                                    DataModel.instance.emojiNum.append("\(selectedImg2)")
                                }
                                .sheet(isPresented: $showSheet) {
                                    ImgModal(showSheet: self.$showSheet, selectedImg1: self.$selectedImg1, selectedImg2: self.$selectedImg2, selectedImg3: self.$selectedImg3, orderNum: self.$orderNum)
                                }
                        }
                        
                    }
                    
                    VStack{
                        Text("End")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                            .frame(maxWidth: .infinity)
                        
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
                                    DataModel.instance.emojiNum.append("\(selectedImg3)")
                                }
                                .sheet(isPresented: $showSheet) {
                                    ImgModal(showSheet: self.$showSheet, selectedImg1: self.$selectedImg1, selectedImg2: self.$selectedImg2, selectedImg3: self.$selectedImg3, orderNum: self.$orderNum)
                                }.onChange(of: selectedImg3) { img in
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                        presentationMode.wrappedValue.dismiss()
                                    }
                                    self.showSheet = false
                                    self.shouldNavigate = true
                                }
                        }
                    }
                }
                Spacer()
                Spacer()
                
            }.padding(.horizontal, 30)
        }
        .onDisappear {
            dataModel.emojiNum = [selectedImg1, selectedImg2, selectedImg3]
        }
    }
}

struct ParticleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ParticleChoice(selectedColor1: .constant(Color.white), selectedColor2: .constant(Color.white), selectedColor3: .constant(Color.white), showSheet: false).previewInterfaceOrientation(.landscapeLeft)
    }
}
