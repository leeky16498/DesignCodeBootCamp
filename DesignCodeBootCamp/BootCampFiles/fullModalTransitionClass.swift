//
//  fullModalTransitionClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct fullModalTransitionClass: View {
    
    @State var showModal = false
    
    var body: some View {
        Text("Show modal")
            .fullScreenCover(isPresented: $showModal) {
                
            }
    }
}

struct fullModalTransitionClass_Previews: PreviewProvider {
    static var previews: some View {
        fullModalTransitionClass()
    }
}
