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
            .animation(.linear(duration: 1).repeatForever(autoreverses: false))
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
