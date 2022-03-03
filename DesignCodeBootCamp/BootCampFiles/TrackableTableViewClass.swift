//
//  TrackableTableViewClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI
import SwiftUITrackableScrollView

struct TrackableTableViewClass: View {
    
    @State var scrollViewContentOffset = CGFloat(0)
    
    var body: some View {
        TrackableScrollView(.vertical, showIndicators: false, contentOffset: $scrollViewContentOffset) {
            Text("\(scrollViewContentOffset)")
        }
        .onChange(of: scrollViewContentOffset,perform: { value in
            print(scrollViewContentOffset)
        })
    }
}

struct TrackableTableViewClass_Previews: PreviewProvider {
    static var previews: some View {
        TrackableTableViewClass()
    }
}
