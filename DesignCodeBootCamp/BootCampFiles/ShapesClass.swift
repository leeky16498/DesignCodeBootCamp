//
//  Shapes.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            
            Rectangle()
                .fill(.pink)
                .ignoresSafeArea(.all)
            
            Circle()
                .stroke(Color.gray, lineWidth: 5)
                .frame(width :30, height : 30)
            
            Capsule()
                .fill(.black)
                .frame(height : 40)
                .overlay(
                    Text("Sign up")
                        .foregroundColor(.white)
                        .padding()
                    , alignment: .bottomTrailing
                )
            
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
