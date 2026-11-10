

import Foundation
import SwiftData

@Model
class Faction {
    var factionName: String
    var factionWins: Int
    var factionLosses: Int
    var factionTotalUses: Int
    init(factionName: String, factionWins: Int, factionLosses: Int, factionTotalUses: Int) {
        self.factionName = factionName
        self.factionWins = factionWins
        self.factionLosses = factionLosses
        self.factionTotalUses = factionTotalUses
    }

}
