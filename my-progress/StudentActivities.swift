//
//  StudentActivities.swift
//  my-progress
//
//  Created by Gabriel Brunichaki on 16/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct StudentActivities: View {
    
    @Binding var student: Student
    @State var classObj: ClassObject

    var body: some View {
        VStack {
            HStack {
                Text(classObj.name)
                .font(.system(size: 24))
                
                Spacer()
                
                Text("Encerrada")
                .font(.system(size: 20))
            }
            .padding(20)
            
            Text(classObj.description)
            .padding(.horizontal, 20)
                .foregroundColor(Color.gray)
                .font(.system(size: 12))
            .frame(width: UIScreen.main.bounds.width, height: nil, alignment: .leading)
            
            List {
                HStack {
                    Text("Challenge I")
                    
                    Spacer()
                    
                    Text("8.0")
                    .bold()
                }
                
                HStack {
                    Text("Challenge II")
                    
                    Spacer()
                    
                    Text("9.5")
                    .bold()
                }
                
                HStack {
                    Text("Challenge III")
                    
                    Spacer()
                    
                    Text("10.0")
                    .bold()
                }
                
                HStack {
                    Text("Challenge IV")
                    
                    Spacer()
                    
                    Text("8.5")
                    .bold()
                }
                
                HStack {
                    Text("Challenge V")
                    
                    Spacer()
                    
                    Text("9.5")
                    .bold()
                }
                
                HStack {
                    Text("Média")
                    .bold()
                    
                    Spacer()
                    
                    Text("9.1")
                    .bold()
                }
            }
            
            Spacer()
            
        }
        .padding(.vertical, 20)
        .navigationBarTitle(student.name)
    }
}
