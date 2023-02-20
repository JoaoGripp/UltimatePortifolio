//
//  UltimatePortifolioApp.swift
//  UltimatePortifolio
//
//  Created by Joao Gripp on 17/02/23.
//

import SwiftUI

@main
struct UltimatePortifolioApp: App {
    @State var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
        }
    }
}
