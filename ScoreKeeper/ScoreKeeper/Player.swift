//
//  Player.swift
//  ScoreKeeper
//
//  Created by DS on 4/8/26.
//

import Foundation

struct Player : Identifiable{
    let id = UUID()
    
    var name: String
    var score: Int
}
