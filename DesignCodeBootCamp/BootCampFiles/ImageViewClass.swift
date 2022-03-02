//
//  ImageViewClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct ImageViewClass: View {
    var body: some View {
        VStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width : 200, height : 200)
            
            Image("background")
                .resizable(resizingMode : .stretch)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImageViewClass_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewClass()
    }
}
