//
//  TabToRoot.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct TabToRoot: View {
    
    @State var home = UUID()
    @State var course = UUID()
    @State var tabselection = 1
    @State var tabtwice = false
    
    var body: some View {
        
        var handler : Binding<Int> { Binding(
            get: {self.tabselection},
            set: {
                if $0 == self.tabselection {
                    tabtwice = true
                }
                self.tabselection = $0
            })
        }
         // 여기에서 새롭게 아는 것은 탭의 선택과 태그를 통해서 사용자의 행동을 추적한다는 점, 그리고 각 뷰에 대해서 아이디를 지정해줄 수 있다는 점이다.
        return
        TabView(selection : handler) {
            NavigationView {
                HomeView1()
                    .id(home)
                    .onChange(of: tabtwice, perform: { value in
                        guard tabtwice else {return}
                        home = UUID()
                        self.tabtwice = false
                    })
            }
            .tabItem {
                Image(systemName: "house")
            }
            .tag(1)
            
            NavigationView {
                CoursesView()
                    .id(course)
            }
            .tabItem {
                Image(systemName: "paperplane")
            }
            .tag(2)
        }
    }
}

struct TabToRoot_Previews: PreviewProvider {
    static var previews: some View {
        TabToRoot()
    }
}
