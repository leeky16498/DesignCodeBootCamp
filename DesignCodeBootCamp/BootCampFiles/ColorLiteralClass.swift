//
//  ColorLiteralClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct ColorLiteralClass: View {
    var body: some View {
        VStack {
            Text("Color Literal")
                .font(.title.bold())
                .foregroundColor(Color(.blue))
        }
        .frame(width : 300, height : 300)
        .background(Image("background").resizable().scaledToFill())
        .cornerRadius(10)
        
    }
}

struct ColorLiteralClass_Previews: PreviewProvider {
    static var previews: some View {
        ColorLiteralClass()
    }
}
