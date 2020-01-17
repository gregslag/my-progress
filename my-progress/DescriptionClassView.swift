//
//  DescriptionClassView.swift
//  my-progress
//
//  Created by Thomas Moraes on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct DescriptionClassView: View {
    @Binding var classObject: ClassObject
    var body: some View {
        VStack {
            
            Toggle(isOn: $classObject.isFinished) {
                Text("Finalizada")
            }
            .padding(.horizontal, 25)
                
            Image(classObject.nameIcon)
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(30)
            
            VStack {
            
                Text(classObject.name)
                    .bold()
                    .font(.title)
                    .frame(
                        width: UIScreen.main.bounds.width/2.0,
                        height: nil,
                        alignment: .center)
                
                HStack{
                    Text("(")
                        .foregroundColor(.gray)
                        .font(.system(size:12))
                    
                    Text(classObject.dates[0])
                        .foregroundColor(.gray)
                        .font(.system(size:12))
                    
                    Text(" - ")
                        .foregroundColor(.gray)
                        .font(.system(size:12))
                    
                    
                    Text(classObject.dates[classObject.dates.count-1])
                        .foregroundColor(.gray)
                        .font(.system(size:12))
                    
                    Text(")")
                        .foregroundColor(.gray)
                        .font(.system(size:12))
                   
                }
                .padding(.bottom, 20)
            
                HStack {
                    Text(classObject.description)
                        .padding(.horizontal, 20)
                        .foregroundColor(.gray)
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: nil,
                            alignment: .center)
                }
            }
            
            Spacer()
            
            ScrollView(.horizontal) {
                HStack() {
                    ForEach (classObject.dates.indices) { index in
                        VStack {
                            Text(self.classObject.dates[index])
                                .font(.system(size:13))
                            Image("document")
                                .resizable()
                                .frame(
                                    width: 230,
                                    height: 250,
                                    alignment: .leading)
                                .cornerRadius(30)
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
            
            Spacer()
            
            
        }
        .frame(
            width: nil,
            height: nil,
            alignment: .center)
    }
}
