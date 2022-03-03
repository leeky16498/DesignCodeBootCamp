//
//  SFSSafariLoader.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI
import SafariServices

struct SFSafariViewWrapper : UIViewControllerRepresentable {
    
    let url : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> some SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        return
    }
}
