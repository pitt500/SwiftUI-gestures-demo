//
//  Card.swift
//  SwiftUI-gestures-demo
//
//  Created by projas on 12/17/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct Card: View {
  
  let tapped: Bool
  @State private var scale: CGFloat = 1
  
  var body: some View {
    VStack {
      Image("success")
        .resizable()
        .frame(width: 300, height: 300)
        .scaleEffect(scale)
        .gesture(MagnificationGesture()
          .onChanged{ value in
            self.scale = value.magnitude
          })
          Text("Card")
            .font(.largeTitle)
            .foregroundColor(Color.white)
      
    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(tapped ? Color.orange : Color.purple)
      .cornerRadius(30)
  }
}

struct Card_Previews: PreviewProvider {
  static var previews: some View {
    Card(tapped: false)
  }
}
