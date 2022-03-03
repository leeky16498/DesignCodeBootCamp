//
//  videoPlayerClass.swift
//  DesignCodeBootCamp
//
//  Created by Kyungyun Lee on 03/03/2022.
//

import SwiftUI
import AVKit

struct videoPlayerClass: View {
    
    @State var player = AVPlayer()
    @State var videoStartTime = CMTimeMake(value: 10, timescale: 1) // 10 divided by 1second
    
    var videoURL = URL(string: "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4")
    
    var body: some View {
        VideoPlayer(player: player)
            .ignoresSafeArea()
            .onAppear {
                player = AVPlayer(url: videoURL!)
                player.play() // 이 친구를 써주면 자동으로 바로 재생이 된다.
                player.seek(to: videoStartTime) // 재생시점을 지정해줄 수 있다.
                player.rate = 1.5 // 노멀이 1.5
                
                let currentTime = player.currentTime()
                print("currentTime", CMTimeGetSeconds(currentTime))
                //비디오의 재생시간을 가져올 수 있다.
                let duration = player.currentItem?.asset.duration
                print("duration", CMTimeGetSeconds(duration!))
                //비디오의 총 재생시간을 가져올 수 있다.
            }
    }
}

struct videoPlayerClass_Previews: PreviewProvider {
    static var previews: some View {
        videoPlayerClass()
    }
}
