//
//  Searchable.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct Searchable: View {
    
    @State var text : String = ""
    @State var updatedAuthors : [Author] = []
    
    var body: some View {
        NavigationView {
            List(text.isEmpty ? author : updatedAuthors) {
                Text($0.name)
            }
            .searchable(text: $text)
            .onChange(of: text) { searchValue in
                updatedAuthors = author.filter {
                    $0.name.contains(searchValue)
                }
            }
        }
    }
}
//서쳐블
struct Searchable_Previews: PreviewProvider {
    static var previews: some View {
        Searchable()
        
        Searchable()
            .environment(\.colorScheme, .dark)
    }
}

struct Author : Identifiable {
    
    var id = UUID()
    var name : String
    
}

var author = [Author(name: "LEE"),Author(name: "kEE"),Author(name: "PEE")]
