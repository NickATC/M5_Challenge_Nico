//
//  LessonView.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import SwiftUI

struct LessonView: View {
    
    @EnvironmentObject var model: ContentModel    
    var lesson: Lesson
    
    var body: some View {
        //
        
        VStack (alignment: .leading){
            //Title
            
            Text("\(lesson.title)")
                .font(.headline)
            
            //Video
            VideoView(videoURL: lesson.url)
            
            Spacer()
        }
        .navigationTitle(Text("Lesson \(lesson.id)"))
        

        
        //
    }
}

