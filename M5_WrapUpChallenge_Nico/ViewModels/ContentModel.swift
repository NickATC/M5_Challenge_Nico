//
//  ContentModel.swift
//  M5_WrapUpChallenge_Nico
//
//  Created by NICOLAS  TAUTIVA on 24/02/22.
//

import Foundation

class ContentModel: ObservableObject {
    //List of lessons
    @Published var videos = [Video]()
 
    
    init() {
        //When started, this code will execute automatically
        getRemoteData()
    }
    
    
    func getRemoteData(){
        //This will fetch and parse data from remote file
        
        //String path
        let urlString = "https://nickatc.github.io/learningAppData/dataChallenge.json" //My personal data.  Works for me!!
        //let urlString = " https://codewithchris.github.io/Module5Challenge/Data.json"  //Chris' data doesn't work for me!
        
        //Create URL object
        let url = URL(string: urlString)
        
        guard url != nil  else {
            //Couldn't create url
            return
        }
        
        //Create a URLRequest object
        let request = URLRequest(url: url!)
        
        //Get the session and kick off the task
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) {( data, response, error) in
            
            //Check if there is an error from the response from the server/Webpage
            guard error == nil else {
                //There was an error
                return
            }
            
            //Handle the response
            do {
                //1.  Create JSON decoder
                let decoder = JSONDecoder()
                
                //2.  Decode
                let videos = try decoder.decode([Video].self, from: data!)
                
                //3.  Append parsed modules into property (array)
                DispatchQueue.main.async {
                    self.videos = videos
                }
            } catch {
                //Couldn't parse json
                print("Couldn't parse JSON")
            }
        }
        
        //Kick off the data task
        
        dataTask.resume()
    }
}
