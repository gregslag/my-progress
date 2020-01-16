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
                ForEach (mocks.classes) { c in
                    
                    NavigationLink(destination: DescriptionClassView(classObject: c )){
                        HStack{
                            Text(c.name)
                            Spacer()
                            
                            Button(action: {
                                self.showingDetail.toggle()
                            }) {
                                Image(systemName: "person.and.person")
                                    .foregroundColor(.blue)
                            }.sheet(isPresented: self.$showingDetail) {
                                StudentListView(classObject: c).environmentObject(self.mocks)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            .navigationBarTitle("Classes")
            AddButton()
        }
    }
    
}

