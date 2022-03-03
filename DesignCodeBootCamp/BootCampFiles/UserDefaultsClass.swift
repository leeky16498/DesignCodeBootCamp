//
//  UserDefaultsClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct UserDefaultsClass: View {
    
    let savedCurrency = UserDefaults.standard.string(forKey: "currency")
    
    var body: some View {
        Text(savedCurrency!)
            .onAppear {
                let preferredCurrency = "CAD"
                UserDefaults.standard.set(preferredCurrency, forKey: "currency") // 세이브 파일명을 정해주고 저장해준 것이다.
                //유저디폴트는 보안이 약하기 때문에 중요한 데이터 저장은 하면 안된다. 둘째로 너무 많은 것을 저장하게 되면 앱이 느려진다. 따라서 이런 상황을 고려해서 사용해야 한다. 일종의 딕셔너리 형태로, 세이브 파일명을 통해서 상수를 가져오는 거라고 보면 된다.
            }
    }
}

struct UserDefaultsClass_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsClass()
    }
}
