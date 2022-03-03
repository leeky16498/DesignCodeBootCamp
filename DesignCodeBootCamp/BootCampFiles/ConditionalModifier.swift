//
//  ConditionalModifier.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct ConditionalModifier: View {
    
    @State var isShow = true
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .if(isShow){ view in
                view.shadow(color: .black, radius: 1, x: 1, y: 1)
            }
    }
}

struct ConditionalModifier_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifier()
    }
}

//아래의 익스텐션을 통해서 뷰를 리턴하여 적용하도록 사용이 가능하다. 좀 복잡하기는 한데, 다음과 같이 뷰 빌더에 대한 함수를 통해서 위 처럼 if 모디파잉을 할 수 있다.
extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
