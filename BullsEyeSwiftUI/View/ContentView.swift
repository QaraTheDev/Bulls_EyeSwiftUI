//
//  ContentView.swift
//  BullsEyeSwiftUI
//
//  Created by Andas on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisiable = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯Try to hit number as close as you can!🎯")
                .bold()
                .font(.system(size: 20))
                .kerning(2.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .padding()
            Text(String("\(game.target)"))
                .font(.system(size: 36))
                .lineSpacing(-1)
                .fontWeight(.black)
                .kerning(-1)
                .font(.largeTitle)
                
            HStack {
                Text("1")
                    .font(.system(size: 20))
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.system(size: 20))
                    .bold()
            }
            Button("Hit me!") {
                alertIsVisiable = true
            }.alert(isPresented: $alertIsVisiable, content:{
                let roundedSliderValue: Int = Int(sliderValue.rounded())
                
                return Alert(title: Text("Nice!"), message: Text("You scored \(game.points(sliderValue: roundedSliderValue))!"), dismissButton: .default(Text("OK")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 844, height: 390))
    }
}
