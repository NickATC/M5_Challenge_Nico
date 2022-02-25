//
//  LessonView.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import SwiftUI

struct LessonView: View {
    
    @EnvironmentObject var model: ContentModel    
    var video: Video
    
    var body: some View {
        //
        
        VStack (alignment: .leading){
            //Title
            
            Text("\(video.title)")
                .font(.headline)
            
            //Video
            VideoView(videoURL: video.url)
            
            Spacer()
        }
        .padding()
        .navigationTitle(Text("Lesson \(video.id)"))
        

        
        //
    }
}

