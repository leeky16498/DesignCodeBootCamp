//
//  DragGesture.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct DragGestureClass: View {
    
    @State var viewState = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.blue)
            .frame(width : 300, height : 300)
            .offset(x : viewState.width, y : viewState.height)
//            .animation(.spring())
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .gesture(
                DragGesture()
                    .onChanged { value in
                        viewState = value.translation
                    }
                    .onEnded { value in
                        viewState = .zero
                    }
            )
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureClass()
    }
}
