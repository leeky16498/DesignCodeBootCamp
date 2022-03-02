//
//  LazyVstackClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct LazyVstackClass: View {
    var body: some View {
        ScrollView{
        LazyVStack{
            ForEach(0..<199) {item in
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                    .frame(height : 100)
                    .shadow(color: .gray, radius: 1, x: 1, y: 1)
                    .padding()
            }
            }
        }
    }
}

struct LazyVstackClass_Previews: PreviewProvider {
    static var previews: some View {
        LazyVstackClass()
    }
}
