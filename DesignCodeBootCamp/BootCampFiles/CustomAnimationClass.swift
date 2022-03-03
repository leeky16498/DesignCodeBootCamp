//
//  CustomAnimationClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct CustomAnimationClass: View {
    
    @State var appear = false
    
    var body: some View {
        Circle()
            .trim(from: 0.2, to: 1)
            .stroke(.blue, style: StrokeStyle(lineWidth : 5, lineCap: .round, lineJoin: .round))
            .frame(width : 44, height : 44)
            .rotationEffect(Angle(degrees: appear ? 360 : 0))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false).speed(2)) // 에니메이션 속성을 정의해줄 수 있다. 보게 되면 로테이션 주면서, 오토리버스와 리핏포에버까지 준 상황
            .onAppear {
                appear = true
            }
    }
}

struct CustomAnimationClass_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimationClass()
    }
}
