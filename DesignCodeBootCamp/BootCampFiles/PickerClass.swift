//
//  PickerClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct PickerClass: View {
    
    @State var color = Color.blue
    @State var color2 = Color.purple
    @State var date : Date = Date()
    @State var date2 : Date = Date()
    
    var body: some View {
        VStack {
            ColorPicker("Color", selection: $color, supportsOpacity: false)
                .padding()
            ColorPicker("Color2", selection: $color2)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(gradient: Gradient(colors: [color, color2]), startPoint: .bottomTrailing, endPoint: .topTrailing))
                .overlay(
                    VStack {
                        DatePicker("datepick", selection: $date, displayedComponents: [.date])
                        DatePicker("datepick1", selection: $date2, in: ...Date())
                    
                    }
                )
        }
    }
}

struct PickerClass_Previews: PreviewProvider {
    static var previews: some View {
        PickerClass()
    }
}
