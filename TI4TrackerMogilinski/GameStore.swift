import Foundation
import SwiftData
import SwiftUI
import Observation
@Observable
class GameStore {
     var games: [Game] = []
    
    func deleteEverything(){
        games.removeAll()
    }
}
