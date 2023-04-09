//
//  ParticleChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ParticleChoice: View {
    var body: some View {
        ZStack{
            VStack{
                
                Spacer(minLength: 250)
                
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
                        
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 300, height: 300)
                            .shadow(color: Color(0xCECECE),radius: 10)
                            .padding(.top, 50)
                            .foregroundColor(.white)
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
                        
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 300, height: 300)
                            .shadow(color: Color(0xCECECE),radius: 10)
                            .padding(.top, 50)
                            .foregroundColor(.white)
                        
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
                        
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: 300, height: 300)
                            .shadow(color: Color(0xCECECE), radius: 10)
                            .padding(.top, 50)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
                Text("dfsdsfd")
                
                Spacer()
                
            }
        }
    }
}
struct ParticleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ParticleChoice().previewInterfaceOrientation(.landscapeLeft)
    }
}
