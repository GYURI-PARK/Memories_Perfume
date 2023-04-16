//
//  ColorChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ColorChoice: View {
    
    @State var showSheet = false
    @State var selectedColor1 = Color.white
    @State var selectedColor2 = Color.white
    @State var selectedColor3 = Color.white
    @State var orderNum = 0
    @State private var shouldNavigate = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ZStack{
                NavigationLink(destination: ParticleChoice(selectedColor1: $selectedColor1, selectedColor2: $selectedColor2, selectedColor3: $selectedColor3), isActive: $shouldNavigate) {
                    EmptyView()
                }
                VStack{
                    
                    Spacer()
                    
                    Text("Select Mood Color")
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
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                            presentationMode.wrappedValue.dismiss()
                                        }
                                        self.presentationMode.wrappedValue.dismiss()
                                        self.showSheet = false
                                        self.shouldNavigate = true
                                    }
                            }
                        }
                    }
                    Spacer()
                    Spacer()
                    
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
    
}

struct ColorChoice_Previews: PreviewProvider {
    
    static var previews: some View {
        ColorChoice(showSheet: false).previewInterfaceOrientation(.landscapeLeft)
    }
}
