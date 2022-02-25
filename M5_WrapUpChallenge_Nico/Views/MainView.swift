//
//  ContentView.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var model: ContentModel
    
    //@State var selection: Int?
    
    var body: some View {
        //
        
        NavigationView {
            
            VStack {
                List{
                    
                    ForEach(model.lessons){ lesson in
                            
                            NavigationLink {
                                LessonView(lesson: lesson)
                            } label: {
                                Text("\(lesson.title)")
                            }
                        }
                }
                
                .navigationTitle("All Videos")
            }
            //.tint(.black)
        }
                  
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ContentModel())
    }
}
