//
//  AdvancedMatchedGeometry.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct AdvancedMatchedGeometry: View {
    
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    Spacer()
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 16)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                            .frame(width : 44)
                        Text("Fever")
                            .matchedGeometryEffect(id: "text", in: namespace)
                            .frame(width : 44)
                        Spacer()
                        Image(systemName: "play.fill")
                            .font(.title)
                            .matchedGeometryEffect(id: "play", in: namespace)
                            .frame(width : 44)
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .matchedGeometryEffect(id: "forward", in: namespace)
                            .frame(width : 44)
                    }
                    .frame(maxWidth : .infinity, maxHeight: 44)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 17)
                            .fill(.purple)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    )
                }
            } else {
                AdvancedGeometryPlayView(namespace: namespace)
            }
        }
        .frame(maxHeight : .infinity, alignment: .bottom)
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}
//matchedGeometry를 사용할 경우 뷰의 변환에서 각자 연결을 통해 애니메이션을 보여줄 수 있다는 장점이 있다. 그래서 아이디와 네임스페이스를 부여하고 연결되는 뷰의 경우 추적하는 애니메이션 구현이 가능하다는 장점이 있다.

struct AdvancedMatchedGeometry_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedMatchedGeometry()
    }
}
