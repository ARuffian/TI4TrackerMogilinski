
import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    
    @Environment(GameStore.self) private var gameStore
    @State var falser = true
    @State var limit = "Factions"
    @State var gamer: Game? = nil
    
    var body: some View {

        NavigationStack {
        VStack {

            ZStack{
                Text("Twilight Imperium 4th Edition Stat Tracker")
                    .font(.custom("SLIDER", size: 42))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black)
                    .padding()
                    .offset(x: -5)
                Text("Twilight Imperium 4th Edition Stat Tracker")
                    .font(.custom("SLIDER", size: 42))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundStyle(AppData.shared.cyrano)
                    .padding()
            }
            ZStack{
                Text("No more Arguing over who won when, now you'll know!")
                    .font(.custom("SLIDER", size: 24))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 100)
                    .offset(x: -5)

                Text("No more Arguing over who won when, now you'll know!")
                    .font(.custom("SLIDER", size: 24))
                    .foregroundStyle(AppData.shared.cyrano)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 100)
            }
            VStack{
                HStack{
                    NavigationLink {
                        GameView()
                    } label: {
                        Text("Game View")
                            .font(.custom("SLIDER", size: 24))
                            .foregroundStyle(AppData.shared.goodPurple)
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding(.horizontal, 50)
                            .padding(.vertical, 60)
                            .background(.white)
                            .cornerRadius(45)
                    }
                    
                    
                    NavigationLink{
                        GameCreateView()
                    } label: {
                        Text("Game Create View")
                            .font(.custom("SLIDER", size: 24))
                            .foregroundStyle(AppData.shared.goodPurple)
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding(.horizontal, 20)
                            .padding(.vertical, 60)
                            .background(.white)
                            .cornerRadius(45)
                    }
                    
                    
                }

            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppData.shared.goodPurple)
    }
        
    }
    
    
}

#Preview {
    ContentView()
}
