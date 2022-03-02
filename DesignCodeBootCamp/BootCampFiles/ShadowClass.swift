//
//  ShadowClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct ShadowClass: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(width : 200, height : 200)
            .cornerRadius(10)
            .shadow(color: .pink.opacity(0.3), radius: 20, x: 0, y: 10)
            .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 2)
        //섀도우 적용 시 안과 밖의 쉐도우 연결을 통해서 입체감을 살릴 수 있다.
    }
}

struct ShadowClass_Previews: PreviewProvider {
    static var previews: some View {
        ShadowClass()
    }
}
