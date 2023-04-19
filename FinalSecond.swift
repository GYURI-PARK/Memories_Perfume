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
        NavigationView {
            ZStack{
                HStack{
                    Spacer()
                    
                    Image("Middle")
                    
                    Spacer()
                    
                    ZStack{
                        Rectangle().frame(width: 600, height: 700).cornerRadius(30)
                        
                        VStack{
                            Spacer(minLength: 250)
                            Text("Middle Note")
                                .fontWeight(.bold)
                                .font(.system(size: 70))
                                .foregroundColor(.white)
                            Spacer(minLength: 70)
                            
                            ZStack{
                                Rectangle().frame(width: 500, height: 400).cornerRadius(30)
                                    .foregroundColor(.white)
                                
                                VStack{
                                    ScrollView() {
                                        Spacer(minLength: 35)
                                        
                                        Text("Middle notes, also known as heart notes, become noticeable once the top notes have evaporated.")
                                            .fontWeight(.medium)
                                            .font(.system(size: 45))
                                            .frame(width: 460)
                                            .multilineTextAlignment(.center)
                                            .lineSpacing(10)
                                        
                                        Spacer(minLength: 55)
                                        
                                        Text("They are the main body of the fragrance, and last longer than the top notes.")
                                            .fontWeight(.medium)
                                            .font(.system(size: 45))
                                            .frame(width: 460)
                                            .multilineTextAlignment(.center)
                                            .lineSpacing(10)
                                        
                                        Spacer(minLength: 55)
                                        
                                        Text("Middle notes are usually floral or spicy, and can include scents like rose, jasmine, and cinnamon..")
                                            .fontWeight(.medium)
                                            .font(.system(size: 45))
                                            .frame(width: 460)
                                            .multilineTextAlignment(.center)
                                            .lineSpacing(10)
                                        
                                        Spacer(minLength: 35)
                                    }
                                }
                            }
                            
                            Spacer(minLength: 250)
                        }
                    }

                    Spacer()
                    
                }
            }
            NavigationLink(
                destination: ColorChoice())
            {
                Text("Next")
                    .font(.system(size: 50).bold())
                    .foregroundColor(.white)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 25)
                    .background(Color.black)
                    .cornerRadius(50)
                    .shadow(radius: 10)
            }
            .buttonStyle(PlainButtonStyle())
            .offset(x: 0, y: 350)
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct FinalSecond_Previews: PreviewProvider {
    static var previews: some View {
        FinalSecond().previewInterfaceOrientation(.landscapeLeft)
    }
}
