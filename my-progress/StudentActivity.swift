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
    
    var body: some View {
        VStack {
            HStack {
                Text("Gabriel Brunichaki")
                .font(.system(size: 24))
                
                Spacer()
                
                Text("01/01/2020")
                .font(.system(size: 20))
            }
            
            Text("Challenge I")
            .bold()
            .font(.system(size: 24))
            .frame(width: nil, height: nil, alignment: .center)
            .padding(.vertical, 40)
            
            Toggle(isOn: $isToggle) {
                Text("Entregue")
            }
            
            HStack {
                Text("Avaliação")
                
                Spacer()
                
                Text("9.5 / 10")
            }
            
            Spacer()
            
        }
        .padding(20)
    }
}

struct StudentActivity_Previews: PreviewProvider {
    static var previews: some View {
        StudentActivity()
    }
}
