import Foundation
import SwiftUI

@Observable
class AppData {


    static let shared = AppData()
    
    var goodPurple = Color(red: 117/255, green: 6/255, blue: 237/255)
    var cyrano = Color(red: 12/255, green: 204/255, blue: 166/255)
    var colors = ["Red", "Blue", "Green", "Orange", "Pink", "Black", "Purple", "Yellow", "N/A"]
    var factList: [Faction] = [
        Faction(factionName: "The Arborec", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Barony of Letnev", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Clan of Saar", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Embers of Muaat", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Emirates of Hacan", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Federation of Sol", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Ghosts of Creuss", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The L1Z1X Mindnet", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Mentak Coalition", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Naalu Collective", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Nekro Virus", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "Sardakk N'orr", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Universities of Jol-Nar", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Winnu", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Xxcha Kingdom", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Yin Brotherhood", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Yssaril Tribes", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Argent Flight", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Empyrean", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Mahact Gene Sorcerers", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Naaz-Rokha Alliance", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Nomad", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Titans of Ul", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Vuil'Raith Cabal", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Council Keleres", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Crimson Rebellion", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Deepwrought Scholarate", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Firmament / The Obsidian", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "Last Bastion", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "The Ral Nel Consortium", factionWins: 0, factionLosses: 0, factionTotalUses: 0),
        Faction(factionName: "N/A", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    ]

    private init() {} // Prevents creating duplicate instances
}
