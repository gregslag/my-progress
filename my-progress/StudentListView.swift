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
        ZStack {
            NavigationView {
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
                    ForEach (0..<mocks.students.count) { i in
                        NavigationLink(destination: StudentActivities()) {
                            HStack {
                                Text(self.mocks.students[i].name)
                                Spacer()
                                Toggle("Presente", isOn: self.$mocks.students[i].isPresent).labelsHidden()
                                    .frame(width: 70, height: nil, alignment: .center)
                                Toggle("Entregou a atividade", isOn: self.$mocks.students[i].deliveredActivity).labelsHidden().disabled(!self.mocks.students[i].isPresent)
                                    .frame(width: 70, height: nil, alignment: .center)
                            }
                        }
                    }
                }.navigationBarTitle(classObject.name)
                AddButton()
            }
        }
    }
}
