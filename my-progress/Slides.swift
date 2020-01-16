//
//  Slides.swift
//  my-progress
//
//  Created by Gregory Lagranha on 15/01/20.
//  Copyright © 2020 Gregory Lagranha. All rights reserved.
//

import SwiftUI

struct Slides: View {
    
    @State private var offset: CGSize = .zero
    @State private var currentCard = 0
    @State private var didJustSwipe = false
    
    var period: [String] = ["07/01", "08/01", "09/01", "10/01", "11/01"]
    
    var view: AnyView
    //    {
    //        return Rectangle()
    //            .foregroundColor(.green)
    //            .cornerRadius(20)
    //            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    //            .shadow(radius: 10)
    //            .padding()
    //            .opacity(0.3)
    //    }
    
    func offset(for i: Int) -> CGSize {
        return i == currentCard ? offset : .zero
    }
    
    var body: some View {
        ZStack{
            ForEach(currentCard..<self.period.count, id: \.self) { i in
                VStack {
                    Text(self.period[self.currentCard])
                    self.view
                        .offset(self.offset(for: i))
                        .gesture(self.gesture)
                        .animation(.spring())
                }
            }
        }
    }
    
    var gesture: some Gesture {
        DragGesture()
            .onChanged {
                if self.didJustSwipe {
                    self.didJustSwipe = false
                    self.offset = .zero
                } else {
                    self.offset = $0.translation
                }
        }
        .onEnded {
            let w = $0.translation.width
            if abs(w) > 100 {
                self.didJustSwipe = true
                let x: Int
                if w < 0 {
                    x = 1000
                    if self.currentCard < (self.period.count - 1) {
                        self.currentCard += 1
                    }
                } else {
                    x = -1000
                    if self.currentCard > 0 {
                        self.currentCard -= 1
                    }
                }
                self.offset = .init(width: x, height: 0)
            } else {
                self.offset = .zero
            }
        }
    }
}
