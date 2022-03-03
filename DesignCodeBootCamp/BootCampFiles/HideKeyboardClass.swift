//
//  HideKeyboardClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct HideKeyboardClass: View {
    
    @State var string : String = ""
    
    var body: some View {
        TextField("hi", text: $string)
            .onTapGesture {
                hideKeyboard()
            }
    }
}

struct HideKeyboardClass_Previews: PreviewProvider {
    static var previews: some View {
        HideKeyboardClass()
    }
}

extension View {
    
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
    
}
//다음과 같이 뷰에 익스텐션을 통해서 하이드 키보드 함수를 정의해주고, 뷰에서 콜하면 문제 없다.
