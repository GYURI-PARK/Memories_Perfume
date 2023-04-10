//
//  ColorPicker.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct MyColorPicker: View {
    // @State private var selectedColor = Color.white
    @Binding var selectedColor: Color

    var body: some View {
        ZStack {
            ColorPicker("Select a color", selection: $selectedColor)
                //.padding()
        }
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
        //.background(selectedColor)
    }
}



struct MyColorPicker_Previews: PreviewProvider {
    
    @State static var selectedColor = Color.white
    static var previews: some View {
        MyColorPicker(selectedColor: $selectedColor)
    }
}
