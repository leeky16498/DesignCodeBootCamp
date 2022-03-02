//
//  AnimationClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct AnimationClass: View {
    
    @State var show : Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(width : show ? 200 : 300, height : show ? 30 : 40)
        .background(show ? .red : .purple)
        .foregroundColor(.white)
        .cornerRadius(20)
        .onTapGesture {
            withAnimation(.easeOut(duration: 0.5)) {
                self.show.toggle()
            }
        } // 유명한 것은 easeout
    }
}

struct AnimationClass_Previews: PreviewProvider {
    static var previews: some View {
        AnimationClass()
    }
}
