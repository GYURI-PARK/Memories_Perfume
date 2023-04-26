//
//  SwiftUIView.swift
//  
//
//  Created by GYURI PARK on 2023/04/26.
//

import SwiftUI

extension Color {
    init(_ hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
        red: Double((hex>>16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
        blue: Double((hex >> 0) & 0xFF) / 255,
        opacity: alpha
        )
    }
}

// Comment: extension은 타입 별로 따로 뺴서 정리 -> 파일명 = [Type] + Extension
