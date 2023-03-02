//
//  TestEnvironmnetApp.swift
//  TestEnvironmnet
//
//  Created by Sraavan Chevireddy on 03/03/23.
//

import SwiftUI

class ViewModelOne: ObservableObject {
    @Published var toggle: Bool = false {
        didSet {
            print("My new value is \(toggle)")
        }
    }
}

@main
struct TestEnvironmnetApp: App {
    @StateObject var vmOne = ViewModelOne()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vmOne)
        }
    }
}
