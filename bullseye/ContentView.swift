//
//  ContentView.swift
//  bullseye
//
//  Created by Ariq Heritsa on 12/01/21.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text("89")
        .kerning(-1)
        .font(.largeTitle)
        .fontWeight(.black)
      HStack {
        Text("1")
          .bold()
        Slider(value: self.$sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button(action: {
        self.alertIsVisible = true
      }){
        Text("Hit me")
      }
      .alert(isPresented: $alertIsVisible) {
        Alert(
          title: Text("Hello there!"),
          message: Text("The slider's value is \(Int(sliderValue))"),
          dismissButton: .default(
            Text("Awesome!"),
            action: {
              self.alertIsVisible = false
            }
          )
        )
      }
    }
    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
