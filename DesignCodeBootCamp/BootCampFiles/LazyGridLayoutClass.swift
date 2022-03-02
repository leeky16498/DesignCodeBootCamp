//
//  LazyGridLayoutClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct LazyGridLayoutClass: View {
    
    var body: some View {
        ScrollView {
            //grid 종류는 flexible, fixed, adaptive 세가지로 나뉜다.
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 10) {
                //자동으로 숫자에 맞추어 정렬하게 된다.
                ForEach(0..<40) { item in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .frame(height : 50)
                }
            }
        }
    }
}

struct LazyGridLayoutClass_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridLayoutClass()
    }
}
