//
//  TabToToop.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct TabToToop: View {
    
    @State var tabSelection = 1
    @State var tabbedTwice = false
    
    
    
    var body: some View {
        
        var handler : Binding<Int> { Binding(
            get: {self.tabSelection},
            set: {
                if $0 == self.tabSelection {
                    tabbedTwice = true
                }
                self.tabSelection = $0
            })
        }
        //핸들러를 통해서 동작을 잡아내게 되는데, 겟셋을 통해서 잡아낸다. 탭 셀렉션에서 변화가 잇는 경우, 사용자의 선택과 뷰가 같으면 트루를 리턴하고 아니면 냅둔다. 근데 여기에다가 프록시를 먹여서 어떻게 리턴을 할지를 정해준다. // 아래 부분
        
        
        return ScrollViewReader { proxy in
            TabView(selection : handler) {
                NavigationView {
                    HomeView1()
                        .onChange(of: tabbedTwice, perform:  { tabbed in
                            if tabbed {
                                withAnimation {
                                    proxy.scrollTo(1)
                                }
                                tabbedTwice = false
                            }
                        })
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(1)
                //여기에서 각 스크롤뷰에 해당하는뷰에 id를 먹여서 구분을 하도록 해둔 것이 핵심이다. 이렇게 되면 스크롤의 상태를 마음대로 조절할 수 있다.
                
                NavigationView {
                    CoursesView()
                        .onChange(of: tabbedTwice, perform:  { tabbed in
                            if tabbed {
                                withAnimation {
                                    proxy.scrollTo(2)
                                }
                                tabbedTwice = false
                            }
                        })
                }
                .tabItem {
                    Image(systemName: "paperplane")
                }
                .tag(2)
            }
        }
    }
}

struct TabToToop_Previews: PreviewProvider {
    static var previews: some View {
        TabToToop()
    }
}
