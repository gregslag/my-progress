//
//  StudentListView.swift
//  my-progress
//
//  Created by Gregory Lagranha on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct StudentListView: View {
    @State var classObject: ClassObject
    
    @State var students: [Student] = [
        Student(name: "Gabriel", class_id: 1),
        Student(name: "Gregory", class_id: 1),
        Student(name: "Ramiro", class_id: 1),
        Student(name: "Thomas", class_id: 1)
    ]
    
    var body: some View {
        ZStack {
            List {
                HStack {
                    Spacer()
                    Text("Presente")
                        .font(.system(size: 13))
                        .frame(width: 70, height: nil, alignment: .center)
                    Text("Atividade entregue")
                        .font(.system(size: 12))
                        .frame(width: 70, height: nil, alignment: .center)
                }
                ForEach (0..<students.count) { i in
                    NavigationLink(destination: StudentActivity(student: self.students[i], classObj: self.classObject)) {
                        HStack {
                            Text(self.students[i].name)
                            Spacer()
                            Toggle("Presente", isOn: self.$students[i].isPresent).labelsHidden()
                                .frame(width: 70, height: nil, alignment: .center)
                            Toggle("Entregou a atividade", isOn: self.$students[i].deliveredActivity).labelsHidden().disabled(!self.students[i].isPresent)
                                .frame(width: 70, height: nil, alignment: .center)
                        }
                    }
                }
            }.navigationBarTitle(classObject.name)
            AddButton()
        }
    }
}
