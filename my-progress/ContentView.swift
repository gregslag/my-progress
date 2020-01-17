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
            NavigationView{
                ClassesListView()
            }.tabItem{
                Image(systemName: "rectangle.stack.person.crop")
                Text("Turmas")
            }
            
            VStack {
                Text("")
            }.tabItem {
                Image(systemName: "clock")
                Text("Agenda")
            }
            
            VStack {
                Text("")
            }.tabItem {
                Image(systemName: "person.fill")
                Text("Perfil")
            }
        }
    }
}

