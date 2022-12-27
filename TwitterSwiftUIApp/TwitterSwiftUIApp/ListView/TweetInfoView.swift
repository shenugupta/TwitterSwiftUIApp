//
//  TweetInfoView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI
import AVKit

struct TweetInfo: View {
    var tweetResponse: TweetListMockResponse
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5, content: {
            HStack{
                ProfilePictureImageView()
                VStack(alignment: .leading, spacing: nil, content: {
                    Text(tweetResponse.name).font(.system(size: 15, weight: .semibold, design: .default))
                    Text(tweetResponse.account).font(.system(size: 13, weight: .light, design: .default))
                        .foregroundColor(.gray)
                })
            }
            
            switch tweetResponse.messageType {
            case "image":
                Image("profile-icon")
                    .resizable()
                    .frame(width: 200, height: 200)
                // executable code
            case "video":
                VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)) {
                    VStack {
                        Text("Watermark")
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .frame(width: 200, height: 200)
            default:
                Text(tweetResponse.message).font(.custom("Helvetica Neue", size: 22))
            }
            
            HStack(alignment:.top, spacing: nil, content: {
                Text(tweetResponse.date)
                    .font(.system(size: 17, weight: .light, design: .default))
                    .foregroundColor(.gray)
                
                Text(tweetResponse.source)
                    .font(.system(size: 17, weight: .semibold, design: .default))
                    .foregroundColor(.blue)
            }).padding(EdgeInsets(top: 10, leading: 1, bottom: 1, trailing: 1))
        })
    }
}

struct TweetInfo_Previews: PreviewProvider {
    static var previews: some View {
        
        TweetInfo(tweetResponse: TweetListMockResponse(id: 1, message: "test", source: "123", name: "344", date: "12/11/2022", account: "3344", messageType: "test", tweetActivity:TweetActivity(retweetCount: 1, likes: 1, comment: 1) ))
        
    }
}

