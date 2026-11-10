
import SwiftUI
import SwiftData

@main
struct TI4TrackerMogilinskiApp: App {
    @State private var gameStore = GameStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(gameStore)
                .modelContainer(for: [Game.self, Faction.self])
        }
    }
}
