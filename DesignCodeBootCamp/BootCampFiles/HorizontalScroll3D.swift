//
//  HorizontalScroll3D.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct HorizontalScroll3D: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<5) {item in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 30)
                            .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX-16) / -20), axis: (x: 0, y: 1, z: 0), anchor: .center, anchorZ: 0, perspective: 1)
                    } // -16을 해준 건 패딩값을 적용해서 시작하도록 미리 설정해 준 것이다.
                    .frame(width : 300, height : 300)
                }
            }
            .padding()
        }
    }
}

struct HorizontalScroll3D_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScroll3D()
    }
}
