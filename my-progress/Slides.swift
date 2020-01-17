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
    
    var period: [String]
    
    var title: String?
    
    var view: AnyView
    
    func offset(for i: Int) -> CGSize {
        return i == currentCard ? offset : .zero
    }
    
    var body: some View {
        ZStack{
            ForEach(currentCard..<self.period.count, id: \.self) { i in
                VStack {
                    HStack {
                        Text(self.title ?? "")
                            .font(.system(size: 24))
                        
                        Spacer()
                        
                      Text(self.period[self.currentCard])
                    }
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
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
