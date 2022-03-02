//
//  LinkClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct LinkClass: View {
    var body: some View {
//        Link("Design+Code", destination: URL(string: "https://designcode.io")!)
        
        Link(destination: URL(string: "http://designcode.io")!) {
            Image(systemName: "square")
                .background(.black)
                .foregroundColor(.white)
        }
    }
}

struct LinkClass_Previews: PreviewProvider {
    static var previews: some View {
        LinkClass()
    }
}
