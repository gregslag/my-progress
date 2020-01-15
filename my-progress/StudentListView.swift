//
//  StudentListView.swift
//  my-progress
//
//  Created by Gregory Lagranha on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct StudentListView: View {
    var students: [Student] = [Student(name: "Gabriel"), Student(name: "Gregory"), Student(name: "Ramiro"), Student(name: "Thomas")]
    
    var body: some View {
        List {
            ForEach (students) { s in
                Text(s.name)
            }
        }.navigationBarTitle("My Apps")
    }
}
