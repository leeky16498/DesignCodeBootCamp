//
//  StateBarClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct StateBarClass: View {
    
    @State var isHidden = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .statusBar(hidden: isHidden)
            .onTapGesture {
                isHidden = true
            }
    }
}

struct StateBarClass_Previews: PreviewProvider {
    static var previews: some View {
        StateBarClass()
    }
}
