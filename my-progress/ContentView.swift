//
//  ContentView.swift
//  my-progress
//
//  Created by Gregory Lagranha on 14/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                StudentListView()
            }.tabItem {
                Image(systemName: "list.bullet")
                Text("Test View")
            }
        }
    }
}

