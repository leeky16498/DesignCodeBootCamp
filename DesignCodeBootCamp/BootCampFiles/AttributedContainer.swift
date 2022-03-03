//
//  AttributedContainer.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct AttributedContainer: View {
    
    var attributedString : AttributedString {
        //컴퓨티드 프로퍼티
        var name = AttributedString("Lee")
        
        var container = AttributeContainer()
        container.underlineStyle = .single
        container.underlineColor = .red
        container.foregroundColor = .red
        
        name.mergeAttributes(container)
        
        return "hello" + name
    } // 컨테이너에 스트링을 넣어서 처리해줄수도 있다. 딱히 쓰려나 모르겠다 근데.
    
    var body: some View {
        Text(attributedString)
    }
}

struct AttributedContainer_Previews: PreviewProvider {
    static var previews: some View {
        AttributedContainer()
    }
}
