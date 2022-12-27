//
//  TwitterSwiftUIAppApp.swift
//  TwitterSwiftUIApp
//
//  Created by Shenu Gupta on 27/12/22.
//

import SwiftUI

@main
struct TwitterSwiftUIAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeTweetView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
