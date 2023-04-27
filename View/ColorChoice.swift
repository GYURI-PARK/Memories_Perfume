//
//  ColorChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ColorChoice: View {
    
    // Comment: 이 뷰에서만 쓰이는 변수라면 private 선언
    @State private var dataModel = DataModel.instance
    @State private var showSheet = false
    @State private var selectedColor1 = Color.white
    @State private var selectedColor2 = Color.white
    @State private var selectedColor3 = Color.white
    @State private var orderNum = 0
    @State private var shouldNavigate = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            ZStack{
                NavigationLink(destination: ParticleChoice(selectedColor1: $selectedColor1, selectedColor2: $selectedColor2, selectedColor3: $selectedColor3), isActive: $shouldNavigate) {
                    EmptyView()
                }
                VStack{
                    
                    Spacer()
                    
                    Text("Select Mood Color")
                        .font(.system(size: 100, weight: .heavy))
                    // Comment: font의 크기와 굵기는 한줄로 지정 가능
                        .padding(.vertical, 25)
                    
                    Spacer()
                    
                    Text("Please choose COLOR that represent the emotions you feel \n when recalling that memory, based on the flow of time.")
                        .fontWeight(.semibold)
                        .font(.system(size: 35))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(0x498C5A))
                        .lineSpacing(15)
                    
                    Spacer(minLength: 100)
                    
                    HStack{
                        VStack{
                            Text("Beginning")
                                .fontWeight(.bold)
                                .font(.system(size: 50))
                                //.frame(width: 400, height: 60)
                                .frame(maxWidth: .infinity)
                            // Comment: 다른 기기에서도 간격을 유지한 채로 보일려면 frame의 너비와 높이를 지정하는 것보다 다음과 같이 자동 정렬
                            
                            
                            ZStack{
                                Circle()
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(selectedColor1)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                        orderNum = 1
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModal(showSheet: self.$showSheet, selectedColor1: self.$selectedColor1, selectedColor2: self.$selectedColor2, selectedColor3: self.$selectedColor3, orderNum: self.$orderNum)
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
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(selectedColor2)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                        orderNum = 2
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModal(showSheet: self.$showSheet, selectedColor1: self.$selectedColor1, selectedColor2: self.$selectedColor2, selectedColor3: self.$selectedColor3, orderNum: self.$orderNum)
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
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(selectedColor3)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                        orderNum = 3
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModal(showSheet: self.$showSheet, selectedColor1: self.$selectedColor1, selectedColor2: self.$selectedColor2, selectedColor3: self.$selectedColor3, orderNum: self.$orderNum)
                                    }
                                    .onChange(of: selectedColor3) { color in
                                        self.showSheet = false
                                        self.shouldNavigate = true
                                    }
                            }
                        }
                    }.padding(.bottom, 20)
                    
                    Spacer()
                    // Comment: Spacer()는 하나만 주고 위의 padding으로 간격 조정하기
                    
                }.padding(.horizontal, 30)
            }
            .onDisappear {
                dataModel.colors = [selectedColor1, selectedColor2, selectedColor3]

            }
    }
}

struct ColorChoice_Previews: PreviewProvider {
    
    static var previews: some View {
        ColorChoice().previewInterfaceOrientation(.landscapeLeft)
    }
}

