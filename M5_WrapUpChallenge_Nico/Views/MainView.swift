//
//  ContentView.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        //
        Text("\(model.lessons.count)")
          
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ContentModel())
    }
}
