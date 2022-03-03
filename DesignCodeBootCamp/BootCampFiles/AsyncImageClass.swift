//
//  AsyncImageClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct AsyncImageClass: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://images.ctfassets.net/ooa29xqb8tix/J6KiaOqQyBtSa84hx6fuI/2cd1d475743a2a42c8643b2a69e88547/Advanced_React_Hooks_800x600_cover.png?w=400&q=50")!) {image in
            image.resizable()
                .scaledToFit()
                .frame(width : 200, height : 200)
        } placeholder: {
            ProgressView()
        }
    }
    //서버에서 이미지를 가져오는 단계인데, 가져오는 동안 플레이스 홀더에 프로그래스뷰를 넣어줌으로서 로딩을 의미해줄 수 있다. 그리고 여기에서 클로저를 열어서 이미지에 대한 커스터마이징도 가능하다.
}

struct AsyncImageClass_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageClass()
    }
}
