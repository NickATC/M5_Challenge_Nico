//
//  VideoView.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import SwiftUI
import AVKit  //library to show videos

struct VideoView: View {
    
    // sample.mp4 is 1920 x 1080
    let videoRatio: CGFloat = 1080 / 1920
    
    var videoURL: String
    
    var body: some View {
        
        //
        
        let vidUrl = URL(string: videoURL )
        
        GeometryReader{ geo in
            VStack{
                //check ULR is not nil
                if vidUrl != nil {
                    VideoPlayer(player: AVPlayer(url: vidUrl!))
                        .cornerRadius(10)
                        .frame(height: geo.size.width * videoRatio)
                }
            }
        }
        
        //
    }
}
