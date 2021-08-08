//
//  RetirementCalculatorApp.swift
//  RetirementCalculator
//
//  Created by Paul Alvarez on 8/08/21.
//

import SwiftUI

@main
struct RetirementCalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
