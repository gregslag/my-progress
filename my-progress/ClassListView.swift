//
//  ClassListView.swift
//  my-progress
//
//  Created by Thomas Moraes on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct ClassesListView: View {

    var classes: [ClassObject] = [
        ClassObject(name: "Bepid Class", nameIcon:"bpidLogo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.", dates:["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2021"]),
        ClassObject(name: "Fast Foundation",nameIcon:"appleLogo", description:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",dates: ["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"]),
        ClassObject(name: "Foundation", nameIcon:"appleLogo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",dates:["01-01-2020","02-01-2020","03-01-2020","04-01-2020","05-01-2020","06-01-2020","07-01-2020"]  )]

    
    
    @State var showingDetail = false

    var body: some View {
        ZStack {
            List(){
                ForEach (classes) { c in
                    
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
                                StudentListView(classObject: c)
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

