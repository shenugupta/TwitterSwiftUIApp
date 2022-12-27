//
//  BundleJSONDecoder.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import Foundation

struct BundleJsonDecoder
{
    static func decodeTweetListJson() -> [TweetListMockResponse] {
        let tweetResponseJson = Bundle.main.path(forResource: "mockTwitter", ofType: "json")
        let result = try! Data(contentsOf: URL(fileURLWithPath: tweetResponseJson!), options: .alwaysMapped)
        return try! JSONDecoder().decode([TweetListMockResponse].self, from: result)
    }
}
