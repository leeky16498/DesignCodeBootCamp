//
//  TapAnimationClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct TapAnimationClass: View {
    
    @State var show = false
    @GestureState var press = false
    
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width : 300, height : 200)
                .background(.blue)
                .cornerRadius(press ? 10 : 20)
                .scaleEffect(show ? 1.2 : 1)
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                        
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.3) {
                            withAnimation{
                                show.toggle()
                            }
                        }
                    }
            }
            
            Image(systemName: "camera.fill")
                .frame(width : 60, height : 60)
                .foregroundColor(.white)
                .background(show ? .black : .blue)
                .mask(Circle())
                .scaleEffect(press ? 2 : 1)
                .animation(.spring())
                .gesture(
                
                    LongPressGesture(minimumDuration: 0.5).updating($press) { currentState, gestureState, transaction in
                        gestureState = currentState
                    }
                        .onEnded{ value in
                            show.toggle()
                        }
                )
        }
    }
}

struct TapAnimationClass_Previews: PreviewProvider {
    static var previews: some View {
        TapAnimationClass()
    }
}
