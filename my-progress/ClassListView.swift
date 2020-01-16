//
//  ClassListView.swift
//  my-progress
//
//  Created by Thomas Moraes on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct ClassesListView: View {
    var classes: [ClassObject] = [ClassObject(name: "Bepid", description: "aloaloalo", dates:["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"]), ClassObject(name: "Fast Foundation",description:"bbbbbb",dates: ["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"]), ClassObject(name: "Foundation", description: "AAAAA",dates:["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"]  )]
    var body: some View {
        List(){
            ForEach (classes) { c in
                NavigationLink(destination: DescriptionClassView(classObject: c )){
                    Text(c.name)
                }
            }
        }.navigationBarTitle("Classes")
    }
}
