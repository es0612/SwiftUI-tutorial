//
//  TestAppApp.swift
//  TestApp
//
//  Created by harami on 2021/02/17.
//

import SwiftUI

@main
struct TestAppApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
