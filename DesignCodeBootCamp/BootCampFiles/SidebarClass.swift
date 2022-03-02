//
//  SidebarClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct SidebarClass: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination : HomeView()) {
                    Label("Courses", systemImage: "book.fill")
                }
                Label("Tutorials", systemImage: "square")
                Label("Courses", systemImage: "book.fill")
            }
        }
        HomeView()
    }
}

struct HomeView : View {
    var body: some View {
        Text("hi")
    }
}

struct SidebarClass_Previews: PreviewProvider {
    static var previews: some View {
        SidebarClass()
    }
}
