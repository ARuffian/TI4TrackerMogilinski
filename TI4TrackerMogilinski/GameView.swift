import SwiftUI
import SwiftData
struct GameView: View {
    
    @Environment(\.modelContext) var context
    
    @Query var gameStorage: [Game]
    
    @Environment(GameStore.self) private var gameStore
    
    var body: some View {
        
        
        ScrollView{
            VStack{
                ZStack{
                    Text("Game History")
                        .font(.custom("SLIDER", size: 42))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                        .padding()
                        .offset(x: -5)
                    Text("Game History")
                        .font(.custom("SLIDER", size: 42))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(AppData.shared.cyrano)
                        .padding()
                }
//                            ForEach(gameStore.games, id: \.self) { game in
//                                VStack {
//                                    Text("\(game.namer)")
//                                    Text("Winner: \(game.winner.factionName)")
//                                        .font(.custom("SLIDER", size: 20))
//                                        .bold()
//                                        .foregroundStyle(.blue)
//                
//                                    Text("Player 1: \(game.faction1.factionName), \(game.color1)")
//                                    Text("Player 2: \(game.faction2.factionName), \(game.color2)")
//                                    Text("Player 3: \(game.faction3.factionName), \(game.color3)")
//                                    Text("Player 4: \(game.faction4.factionName), \(game.color4)")
//                                    Text("Player 5: \(game.faction5.factionName), \(game.color5)")
//                                    Text("Player 6: \(game.faction6.factionName), \(game.color6)")
//                                    Text("Player 7: \(game.faction7.factionName), \(game.color7)")
//                                    Text("Player 8: \(game.faction8.factionName), \(game.color8)")
//                                }
//                                .font(.custom("SLIDER", size: 16))
//                                .foregroundStyle(.blue)
//                                .padding()
//                                .frame(maxWidth: .infinity)
//                                .background(.black)
//                                .cornerRadius(45)
//                
//                            }
                ForEach(gameStorage, id: \.self) { game in
                    VStack {
                        Text("\(game.namer)")
                            .font(.custom("SLIDER", size: 20))
                            .bold()
                            .foregroundStyle(AppData.shared.cyrano)
                            .multilineTextAlignment(.center)
                        Text("Date: \(game.month)/\(game.day)/\(game.year)")
                            .font(.custom("SLIDER", size: 20))
                            .bold()
                            .foregroundStyle(AppData.shared.cyrano)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("Player 1: \(game.faction1.factionName), \(game.color1)")
                            .multilineTextAlignment(.center)
                        
                        
                        Text("Player 2: \(game.faction2.factionName), \(game.color2)")
                            .multilineTextAlignment(.center)
                        
                        
                        Text("Player 3: \(game.faction3.factionName), \(game.color3)")
                            .multilineTextAlignment(.center)
                        
                        if(game.players >= 4){
                            Text("Player 4: \(game.faction4.factionName), \(game.color4)")
                                .multilineTextAlignment(.center)
                        }
                        if(game.players >= 5){
                            Text("Player 5: \(game.faction5.factionName), \(game.color5)")
                                .multilineTextAlignment(.center)
                        }
                        if(game.players >= 6){
                            Text("Player 6: \(game.faction6.factionName), \(game.color6)")
                                .multilineTextAlignment(.center)
                        }
                        if(game.players >= 7){
                            Text("Player 7: \(game.faction7.factionName), \(game.color7)")
                                .multilineTextAlignment(.center)
                        }
                        if(game.players >= 8){
                            Text("Player 8: \(game.faction8.factionName), \(game.color8)")
                                .multilineTextAlignment(.center)
                        }
                        
                        HStack{
                            Image(systemName: "crown")
                                .foregroundStyle(.yellow)
                            Text("Winner: \(game.winner.factionName)")
                                .font(.custom("SLIDER", size: 24))
                                .bold()
                                .foregroundStyle(AppData.shared.cyrano)
                                //.padding(.vertical)
                            Image(systemName: "crown")
                                .foregroundStyle(.yellow)
                        }
                        .padding(.vertical)
                    }
                    .font(.custom("SLIDER", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(AppData.shared.cyrano)
                    .padding()
                    .frame(maxWidth: 350)
                    .background(.black)
                    .cornerRadius(45)
                    
                }
                
                Button("CLEAR EVERYTHING: DANGER DANGER DANGER"){
                    for game in gameStorage {
                            context.delete(game)
                        }
                    try? context.save()
                }
                
            }
               
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppData.shared.goodPurple)
        
    }
    
    
}
#Preview {
    GameView()
}
