//
//  Game.swift
//  TI4TrackerMogilinski
//
//  Created by AARON MOGILINSKI on 10/26/26.
//

import Foundation
import SwiftData

@Model
class Game {
    
    var faction1: Faction
    var color1: String
    var faction2: Faction
    var color2: String
    var faction3: Faction
    var color3: String
    var faction4: Faction
    var color4: String
    var faction5: Faction
    var color5: String
    var faction6: Faction
    var color6: String
    var faction7: Faction
    var color7: String
    var faction8: Faction
    var color8: String
    var winner: Faction
    
    init(faction1: Faction, color1: String, faction2: Faction, color2: String, faction3: Faction, color3: String, faction4: Faction, color4: String, faction5: Faction, color5: String, faction6: Faction, color6: String, faction7: Faction, color7: String, faction8: Faction, color8: String, winner: Faction) {
        self.faction1 = faction1
        self.color1 = color1
        self.faction2 = faction2
        self.color2 = color2
        self.faction3 = faction3
        self.color3 = color3
        self.faction4 = faction4
        self.color4 = color4
        self.faction5 = faction5
        self.color5 = color5
        self.faction6 = faction6
        self.color6 = color6
        self.faction7 = faction7
        self.color7 = color7
        self.faction8 = faction8
        self.color8 = color8
        self.winner = winner
    }
    
    
}
