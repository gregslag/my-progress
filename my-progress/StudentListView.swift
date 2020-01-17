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
    
    @EnvironmentObject var mocks: Mocks
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Slides(period: classObject.dates, isFinished: self.classObject.isFinished, view:
                        AnyView(
                            List {
                                HStack {
                                    Spacer()
                                    Text(self.classObject.isFinished ? "Frequência" : "Presente")
                                        .font(.system(size: 13))
                                        .frame(width: 70, height: nil, alignment: .center)
                                    Text(self.classObject.isFinished ? "Nota final" : "Atividade entregue")
                                        .font(.system(size: 12))
                                        .frame(width: 70, height: nil, alignment: .center)
                                }.padding(.trailing, 15)
                                
                                ForEach (0..<mocks.students.count) { i in
                                    if self.mocks.students[i].classId.contains(self.classObject.classId) {
                                        NavigationLink(destination:
                                            VStack {
                                                if self.classObject.isFinished {
                                                    StudentActivities(
                                                        student: self.$mocks.students[i],
                                                        classObj: self.classObject)
                                                } else {
                                                    StudentActivity(
                                                        student: self.$mocks.students[i],
                                                        classObj: self.classObject)
                                                }
                                            }
                                        ) {
                                            HStack {
                                                Text(self.mocks.students[i].name)
                                                Spacer()
                                                if self.classObject.isFinished {
                                                    Text(self.mocks.students[i].frequency)
                                                        .frame(width: 70, height: nil, alignment: .center)
                                                    Text(self.mocks.students[i].score)
                                                        .frame(width: 70, height: nil, alignment: .center)
                                                } else {
                                                    Toggle("Presente", isOn: self.$mocks.students[i].isPresent).labelsHidden()
                                                        .frame(width: 70, height: nil, alignment: .center)
                                                    Toggle("Entregou a atividade", isOn: self.$mocks.students[i].deliveredActivity).labelsHidden().disabled(!self.mocks.students[i].isPresent)
                                                        .frame(width: 70, height: nil, alignment: .center)
                                                }
                                            }
                                        }
                                    }
                                }
                        }))
                }.navigationBarTitle(classObject.name)
                AddButton(showModal: true)
            }
        }
    }
}
