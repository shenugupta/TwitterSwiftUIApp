//
//  TweetDetailView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI

struct TweetDetailView: View {
    var tweet: TweetListMockResponse
    var body: some View {

        VStack(alignment: .leading, spacing: 5, content: {
            TweetInfo(tweetResponse: tweet)
            TweetDetails(tweetActivity: tweet.tweetActivity)
          
            Divider()
            Spacer()
        })
        .padding(EdgeInsets(top: 2, leading: 16, bottom: 1, trailing: 7))
    }
}

struct TweetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetailView(tweet: TweetListMockResponse(id: 1, message: "Test message", source: "Twitter for iPhone", name: "codecat15", date: "1/1/2021", account: "@codecat15", messageType: "", tweetActivity: TweetActivity(retweetCount: 1, likes: 1, comment: 1)))
    }
}
