//
//  ClassListView.swift
//  my-progress
//
//  Created by Thomas Moraes on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct ClassesListView: View {
    var classes: [Class] = [Class(name: "Bepid", description: "aloaloalo", duration:"2 semanas"), Class(name: "Fast Foundation",description:"bbbbbb", duration:"2 semanas"), Class(name: "Foundation", description: "", duration:"2 semanas")]
    var body: some View {
        List {
            ForEach (classes) { c in
                Text(c.name)
            }
        }.navigationBarTitle("Classes")
    }
}
