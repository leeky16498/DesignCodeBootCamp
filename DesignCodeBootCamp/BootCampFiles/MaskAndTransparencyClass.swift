//
//  MaskAndTransparencyClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct MaskAndTransparencyClass: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack{
                ForEach(0..<4, id: \.self) { item in
                    Text("masks and transparency")
                        .font(.title2.bold())
                        .padding()
                    Divider()
                }
            }
            .frame(height : 350, alignment: .top)
            .background(.white)
            .cornerRadius(10)
            .padding()
    //        .mask(Color.black.opacity(0.3)) // 전체적인 농도를 조절하게 된다.
        .mask(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom))
        }
        //다음과 같이 그래디언트 조정을 통해서 농도의 위아래를 다르게 조절해줄수도 있다.
        //마스킹은 일종의 덮어쓰기로 보여진다. 농도 조절이 가능하다는 점이 핵심. 디자인에 좋을 듯.
    }
}

struct MaskAndTransparencyClass_Previews: PreviewProvider {
    static var previews: some View {
        MaskAndTransparencyClass()
    }
}
