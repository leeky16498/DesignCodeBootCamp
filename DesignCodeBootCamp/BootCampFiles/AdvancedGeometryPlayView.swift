//
//  AdvancedGeometryPlayView.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct AdvancedGeometryPlayView: View {
    
    var namespace : Namespace.ID
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(height: 300)
                .matchedGeometryEffect(id: "shape", in: namespace)
                .padding()
            Text("Fever")
                .matchedGeometryEffect(id: "text", in: namespace)
            HStack {
                Image(systemName: "play.fill")
                    .matchedGeometryEffect(id: "play", in: namespace)
                    .font(.title)
                Image(systemName: "forward.fill")
                    .matchedGeometryEffect(id: "forward", in: namespace)
                    .font(.title)
            }
        }
        .frame(maxWidth : .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(.purple) // 백그라운드는 도형으로 해둬야 연결이 잘된다.
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .ignoresSafeArea(.all)
    }
}

struct AdvancedGeometryPlayView_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        AdvancedGeometryPlayView(namespace: namespace)
    }
}
