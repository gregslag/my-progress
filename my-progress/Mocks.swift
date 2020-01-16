//
//  Mocks.swift
//  my-progress
//
//  Created by Gregory Lagranha on 16/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

class Mocks: ObservableObject {
    @Published var students: [Student] = [
        Student(name: "Gabriel", classId: 2),
        Student(name: "Gregory", classId: 2),
        Student(name: "Ramiro", classId: 2),
        Student(name: "Thomas", classId: 2)
    ]
    
    @Published var classes: [ClassObject] = [
        ClassObject(name: "Bepid", description: "aloaloalo", dates:["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"], classId: 1),
        ClassObject(name: "Fast Foundation",description:"bbbbbb",dates: ["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"], classId: 2),
        ClassObject(name: "Foundation", description: "AAAAA",dates:["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"], classId: 3)]
}
