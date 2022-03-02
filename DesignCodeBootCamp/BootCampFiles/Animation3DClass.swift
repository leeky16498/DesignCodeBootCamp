//
//  Animation3DClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct Animation3DClass: View {
    
    @State var show = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width : 260, height : 200)
                .offset(y : 20)
            RoundedRectangle(cornerRadius: 30)
                .frame(width : 300, height : 200)
                .foregroundColor(.purple)
                .offset(y : show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1.0)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 60 : 0),
                    axis: (x: 1.0, y: 0.0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1)
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                } // 애니메이션 주는 순서를 기억해보자. 오늘 강의 마치고 저녁에 플래시 카드 앱에다가 적용해보기. 카드가 넘어가는 애니메이션으로.
        }
    }
}

struct Animation3DClass_Previews: PreviewProvider {
    static var previews: some View {
        Animation3DClass()
    }
}
