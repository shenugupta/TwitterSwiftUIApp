//
//  TweetListMockResponse.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import Foundation

struct TweetListMockResponse: Decodable {
    let id: Int
    let message, source, name, date, account: String,messageType: String
    let tweetActivity: TweetActivity
}

struct TweetActivity : Decodable {
    let retweetCount, likes, comment: Int
}

