//
//  ContentView.swift
//  RetirementCalculator
//
//  Created by Paul Alvarez on 8/08/21.
//

import SwiftUI
import CoreData
import AppCenterCrashes
import AppCenterAnalytics

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    

    var body: some View {
        NavigationView {
            Button("Throw Error")  {
                let properties = ["Time:":  "\(Date())"]
                Analytics.trackEvent("Main Button clicked", withProperties: properties)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
