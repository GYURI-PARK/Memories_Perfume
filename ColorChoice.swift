//
//  ColorChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ColorChoice: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
            ZStack{
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
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModal()
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
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModal()
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
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModal()
                                    }
                            }
                        }
                    }
                    Spacer()
                    Spacer()
                    
                }
            }
        }
}

struct ColorPickerView: View {
    @State private var selectedColor = CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.9)
    @State var colorList: [CGFloat] = []
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 50)
                .fill(Color(selectedColor))
                .overlay(Image(systemName: "paintpalette.fill").offset(x: -20, y: 0)
                    .foregroundColor(.white)
                    .font(.largeTitle))
            
                .shadow(radius: 10)
                .frame(width: 300, height: 300)
                .padding(.top, 50)
            
            ColorPicker("", selection: $selectedColor)
                .labelsHidden()
                .offset(x:30, y: 28)
            
                .onChange(of: selectedColor) { newValue in
                    if ((newValue.components) != nil) {
                        for i in newValue.components! {
                            colorList.append(i)
                        }
                    }
                }
        }
    }
}


struct ColorChoice_Previews: PreviewProvider {
    
    static var previews: some View {
        ColorChoice().previewInterfaceOrientation(.landscapeLeft)
    }
}
