//
//  GeometryReaderClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct MatchedGeometryReaderClass: View {
    
    @State var show = false
    @Namespace var nameSpace
    
    //일단 MatchedGeometry를 사용하게 되면 애니메이션을 저장하는 용도라고 보면 될 것 같다. 따라서 이 경우 저 뷰가 어디에 위치하느냐에 상관없이 동일한 에니메이션 이펙트를 불러 올 수 있다.
    
    var body: some View {
        ZStack {
            if !show {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .matchedGeometryEffect(id: "shape", in: nameSpace)
                    .frame(width : 100, height : 100)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width : 400, height : 400)
                }
            } else {
                Rectangle()
                    .matchedGeometryEffect(id: "shape", in: nameSpace)
                    .frame(maxWidth : .infinity, maxHeight: 400)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct GeometryReaderClass_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryReaderClass()
    }
}
