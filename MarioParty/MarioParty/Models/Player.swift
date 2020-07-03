//
//  Player.swift
//  MarioParty
//
//  Created by laila al mutawa on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation

struct Player {
    var name: String
    
    func bgName()-> String {
        return name + "BG"
    }
    func soundNames()-> String {
        return name + ".WAV"
    }
}

let players: [Player] = [
    Player(name: "Mario"),
    Player(name: "Luigi"),
    Player(name: "Peach"),
    Player(name: "Waluigi"),
    Player(name: "Yoshi"),
    Player(name: "Bowser"),
]
