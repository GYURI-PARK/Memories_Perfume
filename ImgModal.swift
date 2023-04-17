////
////  ImgModal.swift
////  WWDC2023
////
////  Created by GYURI PARK on 2023/04/16.
////
////

import SwiftUI

struct ImgModal: View {
    
    @Binding var showSheet: Bool
    @Binding var selectedImg1: String
    @Binding var selectedImg2: String
    @Binding var selectedImg3: String
    @Binding var orderNum: Int
    

    let emojis = (1...30).map { "emoji\($0)" }
        
        var body: some View {
            ScrollView(){
                VStack(spacing: 20){
                    Spacer()
                    ForEach(0..<10) { row in
                        HStack(spacing: 20){
                            Spacer()
                            ForEach(0..<3) { col in
                                FrameView(showSheet: $showSheet, orderNum: $orderNum, selectedImg1: $selectedImg1, selectedImg2: $selectedImg2, selectedImg3: $selectedImg3, imageName: emojis[row * 3 + col])
                                    .frame(width: 180, height: 180)
                                Spacer()
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
}

struct FrameView: View {
    
    @Binding var showSheet: Bool
    @Binding var orderNum: Int
    @Binding var selectedImg1: String
    @Binding var selectedImg2: String
    @Binding var selectedImg3: String
    
    let imageName: String
    
        var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.clear)
                    .shadow(radius: 5)
                
                Button(action: {
                    self.showSheet = false
                    
                    if orderNum == 1 {
                        selectedImg1 = imageName
                        print("selectedImg1: \(selectedImg1)")
                    } else if orderNum == 2 {
                        selectedImg2 = imageName
                        print("selectedImg2: \(selectedImg2)")
                    } else if orderNum == 3 {
                        selectedImg3 = imageName
                        print("selectedImg3: \(selectedImg3)")
                    }
                    
                }){
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 1))
                        .shadow(radius: 3)
                        .scaleEffect(0.8)
                }
            }
        }
}

struct ImgModal_Previews: PreviewProvider {
    static var previews: some View {
        ImgModal(showSheet: .constant(false), selectedImg1: .constant(""), selectedImg2: .constant(""), selectedImg3: .constant(""), orderNum: .constant(0))
    }
}
