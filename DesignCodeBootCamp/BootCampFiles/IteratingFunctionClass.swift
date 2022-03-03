//
//  IteratingFunctionClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct IteratingFunctionClass: View {
    //ForEach 수열에 대한 클래스이며, 어렵지 않다.
    var author = ["Lee", "Im", "Ha"]
    
    var body: some View {
        VStack {
            ForEach(author, id: \.self) { item in
                Text(item)
            }
        }
        .onAppear {
            iterateOverAuthor(author: author)
        }
    }
    
    func iterateOverAuthor(author : [String]) {
        for author in author {
            print(author)
        }
    }
}

struct IteratingFunctionClass_Previews: PreviewProvider {
    static var previews: some View {
        IteratingFunctionClass()
    }
}
