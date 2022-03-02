//
//  ToolBarClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct ToolBarClass: View {
    var body: some View {
        NavigationView {
            Text("My app")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Image(systemName: "square")
                    }
                    ToolbarItemGroup(placement: .bottomBar) {
                        Image(systemName: "square")
                        Image(systemName: "square")
                        Image(systemName: "square")
                            .background(.blue)
                            .foregroundColor(.white)
                            .mask(Circle())
                    }
                }
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "square")
                    }
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Image(systemName: "square")
                        Image(systemName: "square")
                        Image(systemName: "square")
                    }
                }
        }
    }
}

struct ToolBarClass_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarClass()
    }
}
