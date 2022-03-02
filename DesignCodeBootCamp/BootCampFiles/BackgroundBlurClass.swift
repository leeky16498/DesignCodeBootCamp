//
//  BackgroundBlurClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI
//pass 파일이 없슴둥
struct BackgroundBlurClass: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.blue)
                .frame(width : 100, height : 100)
                .padding()
            VisualEffectBlur(blurStyle: .systemThinMaterialDark)
                .ignoresSafeArea()
        }
    }
}

struct BackgroundBlurClass_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBlurClass()
    }
}
