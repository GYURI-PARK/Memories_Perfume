//
//  ColorChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ColorChoice: View {
    
    @State private var selectedColor = Color.white
        
    var body: some View {
        ZStack{
            VStack{
                
                Spacer(minLength: 230)
                
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
                        
                        ColorPickerView()

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
                        
                        ColorPickerView()
                        
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
                        
                        ColorPickerView()
                    }
                }
                Spacer()
                
                Button("Next"){
                    // ParticleChoice()
                }
                .font(.system(size: 50))
                .foregroundColor(.black)
                .padding(.horizontal, 50)
                .padding(.vertical, 15)
                .cornerRadius(15)


//                NavigationView {
//                    NavigationLink(destination: ParticleChoice()) {
//                        Button("Next"){
//                            //
//                        }
//
//                    }
//                    .navigationTitle("Title")
//                }
                
                Spacer()
                
            }
        }
    }
}

struct ColorPickerView: View {
    @State private var selectedColor = CGColor(red: 0.65, green: 0.26, blue: 0.33, alpha: 0.8)
    @State var colorList: [CGFloat] = []
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 50)
                .fill(Color(selectedColor))
                .overlay(Image(systemName: "paintpalette").offset(x: -20, y: 0)
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
            ForEach(colorList, id:\.self){
                Text("\($0)")
            }
            
        }
    }
}

struct ColorChoice_Previews: PreviewProvider {
    static var previews: some View {
        ColorChoice().previewInterfaceOrientation(.landscapeLeft)
    }
}
