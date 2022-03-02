//
//  TextViewClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct TextViewClass: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 28, weight: .bold, design: .monospaced))
            .frame(width : 50, alignment: .center)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
            .lineSpacing(10) // 위아래 공간 정렬
    }
}

struct TextViewClass_Previews: PreviewProvider {
    static var previews: some View {
        TextViewClass()
    }
}
