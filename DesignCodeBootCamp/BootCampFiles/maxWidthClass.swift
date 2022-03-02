//
//  maxWidthClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct maxWidthClass: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(.blue)
                .overlay(
                    Image(systemName: "xmark")
                         .frame(width : 32, height : 32)
                         .background(Circle().stroke())
                         .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .topTrailing)
                         .padding()
                ) // 오버레이를 사용한 개념, 오버레이는 결국 하나의 스택과도 같다고 보면 문제 없다.
        }
    }
}

struct maxWidthClass_Previews: PreviewProvider {
    static var previews: some View {
        maxWidthClass()
    }
}
