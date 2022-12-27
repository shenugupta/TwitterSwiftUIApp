//
//  TweetCellBottomView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI


struct TweetCellBottomView: View {
    var tweetActivity: TweetActivity
    var body: some View {
        HStack(spacing:10){
            HStack{
                Image(systemName: "bubble.left")
                Text("\(tweetActivity.comment)")
                    .font(.footnote)
            }

            HStack{
                Image(systemName: "arrow.clockwise")
                Text("\(tweetActivity.retweetCount)").font(.footnote)
            }

            HStack{
                Image(systemName: "heart")
                Text("\(tweetActivity.likes)").font(.footnote)
            }
            Image(systemName: "square.and.arrow.up")
        }
    }
}

struct TweetCellBottomView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellBottomView(tweetActivity: TweetActivity(retweetCount: 1, likes: 2, comment: 3))
    }
}
