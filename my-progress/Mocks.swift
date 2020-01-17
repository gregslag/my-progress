//
//  Mocks.swift
//  my/progress
//
//  Created by Gregory Lagranha on 16/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

class Mocks: ObservableObject {
    @Published var students: [Student] = [
        Student(name: "Gabriel", classId: [2], frequency: "83%", score: "8.6"),
        Student(name: "Gregory", classId: [2, 3], frequency: "75%", score: "8.0"),
        Student(name: "Ramiro", classId: [2], frequency: "90%", score: "8.4"),
        Student(name: "Thomas", classId: [2], frequency: "93%", score: "9.2"),
        Student(name: "Fernando", classId: [1], frequency: "83%", score: "8.6"),
        Student(name: "Guilherme", classId: [1], frequency: "75%", score: "8.0"),
        Student(name: "Athur", classId: [1, 3], frequency: "90%", score: "8.4"),
        Student(name: "João", classId: [1, 3], frequency: "93%", score: "9.2")
    ]
    
    @Published var classes: [ClassObject] = [
        ClassObject(name: "Bepid", nameIcon:"bpidLogo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.", dates:["01/01/2020","02/01/2020","03/01/2020","04/01/2020","05/01/2020","06/01/2020","07/01/2020"], classId: 1, isFinished: false),
        ClassObject(name: "Fast Foundation",nameIcon:"appleLogo", description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",dates: ["01/01/2020","02/01/2020","03/01/2020","04/01/2020","05/01/2020","06/01/2020","07/01/2020"], classId: 2, isFinished: false),
        ClassObject(name: "Foundation", nameIcon:"appleLogo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.", dates:["01/01/2020","02/01/2020","03/01/2020","04/01/2020","05/01/2020","06/01/2020","07/01/2020"], classId: 1, isFinished: false)]
}
