//
//  LinkForText.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct LinkForText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                UIApplication.shared.open(URL(string: "http://www.designcode.io")!)
            }
    } // 싱글톤 호출을 통해서 홈페이지 이동이 가능합니다. 싱기방기리.
    
    //만약 나눠서 주고 싶다면, 텍스트를 hSTACK에 넣어놓고 링크를 하나하나 전부 주면 된다.
}

struct LinkForText_Previews: PreviewProvider {
    static var previews: some View {
        LinkForText()
    }
}
