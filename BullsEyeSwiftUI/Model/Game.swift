//
//  Game.swift
//  BullsEyeSwiftUI
//
//  Created by Andas on 19.03.2023.
//

import Foundation

struct Game {
    var target = Int.random(in: 1..<100)
    var round = 1
    var score = 0
    
    func points(sliderValue: Int) -> Int{
        return 100 - abs(self.target - sliderValue)
    }
}
 
