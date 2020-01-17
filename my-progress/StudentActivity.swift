//
//  StudentActivity.swift
//  my-progress
//
//  Created by Gabriel Brunichaki on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct StudentActivity: View {
    
    @Binding var student: Student
    @State var classObj: ClassObject
    @State var score: String = ""
    
    var body: some View {
        VStack {
            Slides(period: classObj.dates,
                   title: "Challenge I",
                   view: AnyView(
                    VStack {
                        
                        Toggle(isOn: $student.isPresent) {
                            Text("Presente")
                        }
                        
                        Toggle(isOn: $student.deliveredActivity) {
                            Text("Entregue")
                        }.disabled(!student.isPresent)
                        
                        HStack {
                            Text("Avaliação")
                            
                            Spacer()
                            
                            TextField("Nota", text: $score)
                                .background(Color.init(red: 235/255, green: 235/255, blue: 235/255))
                                .frame(width: 60, height: 60, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                        }
                        
                        Spacer()
                    }
                )
            )
        }
        .padding(20)
        .navigationBarTitle(student.name)
    }
}
