//
//  HomeTweetView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI

struct HomeTweetView: View {
    
    @State private var tweetList = BundleJsonDecoder.decodeTweetListJson()
    var body: some View {
        
        ZStack{
            NavigationView{
                List(tweetList, id: \.id){ tweet in
                    TweetCellView(tweetResponse: tweet)
                    
                }.navigationBarTitle("Tweet View", displayMode: .inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "person.crop.circle")
                            
                        }
                    }
            }
        }
    }
}

struct HomeTweetView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTweetView()
    }
}
