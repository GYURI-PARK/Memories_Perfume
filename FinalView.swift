//
//  FinalView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/19.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        HStack{
            Spacer()
            Image("Top 1")
            Spacer()
            
            VStack{
                    
                    VStack{
                        
                        Text("Top Note")
                            .fontWeight(.bold)
                            .font(.system(size: 70))
                            .foregroundColor(.white)
                            //.padding(.top, 5)
                            
                            VStack{
                                ScrollView() {
                                    Spacer(minLength: 75)
                                    
                                    Text("Top notes are the initial scents that you smell when you first apply the perfume.")
                                        .fontWeight(.medium)
                                        .font(.system(size: 45))
                                        .frame(width: 460)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(10)
                                    
                                    Spacer(minLength: 55)
                                    
                                    Text("They are typically light and fresh, and evaporate quickly.")
                                        .fontWeight(.medium)
                                        .font(.system(size: 45))
                                        .frame(width: 460)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(10)
                                    
                                    Spacer(minLength: 55)
                                    
                                    Text("Some common top notes include citrus, bergamot, and lavender.")
                                        .fontWeight(.medium)
                                        .font(.system(size: 45))
                                        .frame(width: 460)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(10)
                                    
                                    Spacer(minLength: 65)
                                }
                                .frame(height: 500)
                            }
                            .background {
                                Rectangle().cornerRadius(30)
                                    .frame(width: 500, height: 400)
                                    .foregroundColor(.white)
                            }

                    }
                    .padding(.horizontal, 80)
                    .padding(.vertical, 25)
                    .background {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.black)
                            .frame(width: 600, height: 700)
                    }

                NavigationLink {
                    FinalSecond()
                } label: {
                    Text("Next")
                        .font(.system(size: 50).bold())
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .padding(.horizontal, 70)
                        .padding(.vertical, 20)
                        .background(Color.black)
                        .shadow(radius: 10)
                        .cornerRadius(50)
                }
                .padding(.top, -30)
                .shadow(radius: 20)
            }
            
            Spacer()
        }
    }
}




struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView().previewInterfaceOrientation(.landscapeLeft)
    }
}
