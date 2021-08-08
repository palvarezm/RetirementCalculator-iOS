//
//  RetirementCalculatorApp.swift
//  RetirementCalculator
//
//  Created by Paul Alvarez on 8/08/21.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
struct RetirementCalculatorApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        AppCenter.start(withAppSecret: "e0e45cc9-825a-44b0-b3f1-20ca39c8c404", services:[
          Analytics.self,
          Crashes.self
        ])
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
