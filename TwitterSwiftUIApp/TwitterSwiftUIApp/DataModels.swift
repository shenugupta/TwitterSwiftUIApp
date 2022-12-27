//
//  DataModels.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import Foundation


import Foundation

struct TweetListResponse: Decodable {
    let id: Int
    let message, source, name, date, account: String,messageType: String
}

