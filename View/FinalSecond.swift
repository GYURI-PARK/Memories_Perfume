//
//  FinalSecond.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/20.
//

//
//  FinalView.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/19.
//

import SwiftUI

struct FinalSecond: View {
    var body: some View {
        HStack{
            Spacer()
            Image("Middle")
            Spacer()
            
            VStack{
                    VStack{
                        Text("Middle Note")
                            .fontWeight(.bold)
                            .font(.system(size: 70))
                            .foregroundColor(.white)
                            .padding(.top, 25)
                            
                            VStack{
                                ScrollView() {
                                    Spacer(minLength: 75)
                                    
                                    Text("Middle notes, also known as heart notes, become noticeable once the top notes have evaporated.")
                                        .fontWeight(.medium)
                                        .font(.system(size: 35))
                                        .frame(width: 460)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(10)
                                    
                                    Spacer(minLength: 55)
                                    
                                    Text("They are the main body of the fragrance, and last longer than the top notes.")
                                        .fontWeight(.medium)
                                        .font(.system(size: 35))
                                        .frame(width: 460)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(10)
                                    
                                    Spacer(minLength: 55)
                                    
                                    Text("Middle notes are usually floral or spicy, and can include scents like rose, jasmine, and cinnamon.")
                                        .fontWeight(.medium)
                                        .font(.system(size: 35))
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
                    FinalLast()
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



struct FinalSecond_Previews: PreviewProvider {
    static var previews: some View {
        FinalSecond().previewInterfaceOrientation(.landscapeLeft)
    }
}
