//
//  StudentActivity.swift
//  my-progress
//
//  Created by Gabriel Brunichaki on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct StudentActivity: View {
    
    @State private var isToggle: Bool = false
    @State var student: Student
    @State var classObj: ClassObject
    @State var name: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Challenge I")
                .font(.system(size: 24))
                
                Spacer()
                
                Text("01/01/2020")
                .font(.system(size: 20))
            }
            
            Toggle(isOn: $isToggle) {
                Text("Entregue")
            }
            
            HStack {
                Text("Avaliação")
                
                Spacer()
                
                TextField("Nota", text: $name)
                .background(Color.init(red: 235/255, green: 235/255, blue: 235/255))
                .frame(width: 60, height: 60, alignment: .center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            
            Spacer()
            
        }
        .padding(20)
        .navigationBarTitle(student.name)
    }
}
