//
//  customScrollBar.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI
import SwiftUITrackableScrollView

struct customScrollBar: View {
    
    @State var scrollViewContentOffset : CGFloat = .zero
    
    var body: some View {
        
        ZStack(alignment : .top) {
            
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            
            TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            
            Rectangle()
                .foregroundColor(.white)
                .opacity(scrollViewContentOffset > 16 ? 1:0)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height:0)
        }
    }
}

struct customScrollBar_Previews: PreviewProvider {
    static var previews: some View {
        customScrollBar()
    }
}
