//
//  AppstorageClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct AppstorageClass: View {
    
    @AppStorage("themePresenter") var themePresenter : String = "dark"
    //새로운 유저디폴트의 사용을 깔끔하게 하는 거라고 생각하면 된다. 앱이 죽었다 깨도 값이 변하지 않고 저장이 된다. 쉽게 생각해 쉽게 ㅋㅋㅋㅋ
    var body: some View {
        Text("Theme : \(themePresenter)")
    }
}

struct AppstorageClass_Previews: PreviewProvider {
    static var previews: some View {
        AppstorageClass()
    }
}
