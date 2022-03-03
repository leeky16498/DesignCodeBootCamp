//
//  LoadSafariClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct LoadSafariClass: View {
    //사파리 로더를 통해서 뷰클릭 시 불러오는 방법이다.
    //저런거 어떻게 다들 아는지 신기한데..하여간 암기하는게 최고일 듯.
    
    @State var showSafari : Bool = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                showSafari.toggle()
            }
            .fullScreenCover(isPresented : $showSafari) {
                SFSafariViewWrapper(url: URL(string: "http://www.designcode.io")!)
            }
    }
}

struct LoadSafariClass_Previews: PreviewProvider {
    static var previews: some View {
        LoadSafariClass()
    }
}
