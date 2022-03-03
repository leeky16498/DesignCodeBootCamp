//
//  ShareSheetClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI

struct ShareSheetClass: View {
    var body: some View {
        Button (action: {
            shareButton()
        }, label: {
            Image(systemName: "square.and.arrow.up")
        })
    }
    
    func shareButton() {
        let url = URL(string: "http://www.designcode.io")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
    }
}

struct ShareSheetClass_Previews: PreviewProvider {
    static var previews: some View {
        ShareSheetClass()
    }
}
