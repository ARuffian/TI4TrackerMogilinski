//
//  GameView.swift
//  TI4TrackerMogilinski
//
//  Created by AARON MOGILINSKI on 10/27/26.
//

import SwiftUI
import SwiftData

struct GameView: View {
    
    @Environment(GameStore.self) private var gameStore
    
    var body: some View {
        VStack{
            Text("Game History")
                .font(.custom("SLIDER", size: 42))
                .bold()
                .multilineTextAlignment(.center)
                .foregroundStyle(.blue)
                .padding()
            ForEach(gameStore.games, id: \.self) { game in
                VStack {
                    Text("Winner: \(game.winner.factionName)")
                        .font(.custom("SLIDER", size: 20))
                        .bold()
                        .foregroundStyle(.blue)
                    
                    Text("Player 1: \(game.faction1.factionName), \(game.color1)")
                    Text("Player 2: \(game.faction2.factionName), \(game.color2)")
                    Text("Player 3: \(game.faction3.factionName), \(game.color3)")
                    Text("Player 4: \(game.faction4.factionName), \(game.color4)")
                    Text("Player 5: \(game.faction5.factionName), \(game.color5)")
                    Text("Player 6: \(game.faction6.factionName), \(game.color6)")
                    Text("Player 7: \(game.faction7.factionName), \(game.color7)")
                    Text("Player 8: \(game.faction8.factionName), \(game.color8)")
                }
                .font(.custom("SLIDER", size: 16))
                .foregroundStyle(.blue)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.black)
                .cornerRadius(45)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppData.shared.goodPurple)
        
    }
}

#Preview {
    GameView()
}
