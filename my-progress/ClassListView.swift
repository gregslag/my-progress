//
//  ClassListView.swift
//  my-progress
//
//  Created by Thomas Moraes on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct ClassesListView: View {
    @EnvironmentObject var mocks: Mocks
    
    @State var showingDetail = false

    var body: some View {
        ZStack {
            List(){
                ForEach (0..<mocks.classes.count) { c in
                    
                    NavigationLink(destination: DescriptionClassView(classObject: self.$mocks.classes[c] )){
                        HStack{
                            Text(self.mocks.classes[c].name)
                            Spacer()
                            
                            Button(action: {
                                self.showingDetail.toggle()
                            }) {
                                Image(systemName: "person.and.person")
                                    .foregroundColor(.blue)
                            }.sheet(isPresented: self.$showingDetail) {
                                StudentListView(classObject: self.mocks.classes[c]).environmentObject(self.mocks)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            .navigationBarTitle("Turmas")
            AddButton()
        }
    }
    
}

