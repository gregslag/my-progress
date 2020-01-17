//
//  AddButton.swift
//  my-progress
//
//  Created by Gregory Lagranha on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct AddButton: View {
    
    @State var showModal = false
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    if self.showModal {
                        self.isPresented.toggle()
                    }
                }) {
                    Text("+")
                        .font(.system(size: 50))
                        .frame(width: 77, height: 70)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 7)
                }
                .background(Color.blue)
                .cornerRadius(38.5)
                .padding()
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
                    .sheet(isPresented: self.$isPresented) {
                        VStack {
                            Spacer()
                            Image("qrcode")
                                .frame(width: 80, height: 80, alignment: .center)
                            Spacer()
                            Text("TURMAAPLE515")
                                .font(.title)
                                .bold()
                                .padding(10)
                                .border(Color.gray)
                            Spacer()
                        }
                }
            }
        }
    }
}
