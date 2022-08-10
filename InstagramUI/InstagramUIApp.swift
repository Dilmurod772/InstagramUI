//
//  InstagramUIApp.swift
//  InstagramUI
//
//  Created by Karimov Dilmurod on 09/08/22.
//

import SwiftUI

@main
struct InstagramUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StarterScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext).environmentObject(Status())
        }
    }
}
