//
//  TransitionClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct TransitionClass: View {
    
    @State var show = false
    
    var body: some View {
        ZStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Capsule().stroke())
            
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .padding()
//                    .transition(.slide) // 탭하게 되면 애니메이션과 함께 사라진다.
                    .transition(.scale(scale: 0.1, anchor: .bottomTrailing))
            }
            
        }
        .onTapGesture {
            withAnimation(.easeOut) {
                show.toggle()
            }
        }
    }
}

struct TransitionClass_Previews: PreviewProvider {
    static var previews: some View {
        TransitionClass()
    }
}
