//
//  TweetDetails.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI

struct TweetDetails: View {
    var tweetActivity : TweetActivity

    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Divider()
            HStack{
                Text("\(tweetActivity.retweetCount)")
                    .foregroundColor(.red)
                    .font(.system(size: 14, weight: .semibold, design: .default))
                Text("Retweets")
                    .font(.system(size: 14, weight: .light, design: .default))
                    .foregroundColor(.gray)

                Text("\(tweetActivity.comment)")
                    .foregroundColor(.red)
                    .font(.system(size: 14, weight: .semibold, design: .default))

                Text("Quote Tweets")
                    .font(.system(size: 14, weight: .light, design: .default))
                    .foregroundColor(.gray)

                Text("\(tweetActivity.likes)")
                    .foregroundColor(.red)
                    .font(.system(size: 14, weight: .semibold, design: .default))
                Text("Likes")
                    .font(.system(size: 14, weight: .light, design: .default))
                    .foregroundColor(.gray)
            }

            Divider()
        }).padding(EdgeInsets(top: 5, leading: 9, bottom: 1, trailing: 9))
    }
}

struct TweetDetails_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetails(tweetActivity: TweetActivity(retweetCount: 1, likes: 10, comment: 20))
    }
}
