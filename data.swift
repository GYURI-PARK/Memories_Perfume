//
//  data.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/16.
//

import SwiftUI
 
public class DataModel : ObservableObject {
    static let instance = DataModel()
    var colors : [Color] = []
    var emojiNum : [String] = []
    
    private init(){ }
}


