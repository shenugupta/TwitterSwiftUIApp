//
//  TweetCellView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI

struct TweetCellView: View {
    var tweetResponse: TweetListMockResponse
    var body: some View {

        VStack(alignment: .center, spacing: 0, content: {
            TweetInfo(tweetResponse: tweetResponse)
            TweetCellBottomView(tweetActivity: TweetActivity(retweetCount: 1, likes: 2, comment: 3))
        })
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweetResponse: TweetListMockResponse(id: 1, message: "Test message", source: "Twitter for iPhone", name: "profile-icon", date: "1/1/2021", account: "@profile-icon", messageType: "test", tweetActivity: TweetActivity(retweetCount: 1, likes: 1, comment: 1)))
    }
}
