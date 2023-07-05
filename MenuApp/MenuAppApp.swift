//
//  MenuAppApp.swift
//  MenuApp
//
//  Created by Александра Маслова on 01.07.2023.
//

import SwiftUI

@main
struct MenuAppApp: App {
    var dataStore = DataStore()
    var body: some Scene {
        WindowGroup {
            TabBarView().environmentObject(dataStore)
        }
    }
}
