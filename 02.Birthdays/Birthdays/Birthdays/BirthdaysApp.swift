//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by DS on 4/12/26.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
