//
//  ProfilePictureImageView.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI

struct ProfilePictureImageView: View {
    var body: some View {
            Image("profile-icon")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

    }
}

struct ProfilePictureImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePictureImageView()
    }
}
