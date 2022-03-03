//
//  AttributedStringClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct AttributedStringClass: View {
    //ios15부터 가능하며, 마크다운에 내가 원하는 스트링 정보를 전부 담아서 한번에 리턴해주는 방식이라고 생각하면 편할 것 같다.
    let markdown = "Visit [DesignCode](http://designcode.io) to learn how to 'code' and _design_. "
    //여기에서 중요한 것은 스트링을 그냥 타입으로 선언하는 것이 아니고 어트리뷰트 스트링으로 선언해주는것이다.
    
    @State var myString : AttributedString = ""
    
    var body: some View {
        Text(myString)
            .onAppear {
                do {
                    myString = try AttributedString(markdown : markdown)
                }catch {
                    print("Error")
                }
            }
    }
}

struct AttributedStringClass_Previews: PreviewProvider {
    static var previews: some View {
        AttributedStringClass()
    }
}
