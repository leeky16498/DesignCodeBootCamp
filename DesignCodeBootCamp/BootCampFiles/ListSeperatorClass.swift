//
//  ListSeperatorClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct ListSeperatorClass: View {
    var body: some View {
        List {
            ForEach(0..<5) {item in
                Text("Hi")
//                    .listRowSeparator(.hidden)
                    .listRowSeparatorTint(.blue)
            }
        }
        
    }
}

struct ListSeperatorClass_Previews: PreviewProvider {
    static var previews: some View {
        ListSeperatorClass()
    }
}
