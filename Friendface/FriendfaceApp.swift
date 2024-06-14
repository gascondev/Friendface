//
//  FriendfaceApp.swift
//  Friendface
//
//  Created by Álvaro Gascón on 13/6/24.
//

import SwiftData
import SwiftUI

@main
struct FriendfaceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
