//
//  ContentView.swift
//  SwiftUI-gestures-demo
//
//  Created by projas on 12/17/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State private var tapped = false
  @State private var cardDragState: CGSize = .zero
  
  var body: some View {
    Card(tapped: tapped)
      .animation(.spring())
      .offset(cardDragState)
      .gesture(DragGesture()
        .onChanged { value in
          self.cardDragState = value.translation
        }
        .onEnded { value in
          self.cardDragState = .zero
        }
      )
      
      .gesture(TapGesture(count: 1)
        .onEnded({
          self.tapped.toggle()
        }))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
