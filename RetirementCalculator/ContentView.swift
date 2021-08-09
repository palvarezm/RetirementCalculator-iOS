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
    @State private var didTap = false

    var body: some View {
        NavigationView {
            Button("Throw Error")  {
//                let properties = ["Time:":  "\(Date())"]
//                Analytics.trackEvent("Main Button clicked", withProperties: properties)

                self.didTap = !self.didTap
            }.background(didTap ? Color.black : Color.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
