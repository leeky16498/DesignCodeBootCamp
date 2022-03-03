//
//  SwitchVariableClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct SwitchVariableClass: View {
    
    var language : String = "french"
    
    var body: some View {
        
        switch language {
        case "french":
            Text("bonjour")
        case "japanese":
            Text("nihao")
        case "chinese":
            Text("hahoahoaho")
        default:
            Text("안녕하세요")
        }
    }
}

struct SwitchVariableClass_Previews: PreviewProvider {
    static var previews: some View {
        SwitchVariableClass()
    }
}
