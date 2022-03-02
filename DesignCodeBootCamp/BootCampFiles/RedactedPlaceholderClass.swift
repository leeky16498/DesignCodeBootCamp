//
//  RedactedPlaceholderClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct RedactedPlaceholderClass: View {
    
    @State var isLoading = true
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
            .redacted(reason: isLoading ? .placeholder : .init())
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                isLoading = false
                }
            }
    }
} // redact는 내용을 가리고 있다가 보여주는 틀이다.
//뷰에 제공시 테두리만 제공했다가, 불리언을 통해서 내용 도시가 가능

struct RedactedPlaceholderClass_Previews: PreviewProvider {
    static var previews: some View {
        RedactedPlaceholderClass()
    }
}
