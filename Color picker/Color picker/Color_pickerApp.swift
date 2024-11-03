//
//  Color_pickerApp.swift
//  Color picker
//
//  Created by Brandy Nguyen on 10/22/24.
//

import SwiftUI

@main
struct color_pickerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Persistence()) // Inject persistence object
        }
    }
}
