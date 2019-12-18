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
  
  var body: some View {
    Card(tapped: tapped)
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
