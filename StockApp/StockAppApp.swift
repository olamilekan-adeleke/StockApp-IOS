//
//  StockAppApp.swift
//  StockApp
//
//  Created by Enigma Kod on 11/03/2023.
//

import SwiftUI

@main
struct StockAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
