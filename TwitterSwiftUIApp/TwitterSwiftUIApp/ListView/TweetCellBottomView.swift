//
//  TweetCellBottomView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI


struct TweetCellBottomView: View {
    var body: some View {
        HStack(spacing:10){
            HStack{
                Image(systemName: "bubble.left")
               
            }

            HStack{
                Image(systemName: "arrow.clockwise")
             
            }

            HStack{
                Image(systemName: "heart")
               
            }
            Image(systemName: "square.and.arrow.up")
        }
    }
}

struct TweetCellBottomView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellBottomView()
    }
}
