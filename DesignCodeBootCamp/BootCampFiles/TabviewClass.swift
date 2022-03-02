//
//  TabviewClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct TabviewClass: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .fill(.blue)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.red)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.orange)
                .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        //탭뷰 스타일에서 인덱스의 위치와 나타냄 여부를 정해줄 수 있다.
    }
}

struct TabviewClass_Previews: PreviewProvider {
    static var previews: some View {
        TabviewClass()
    }
}
