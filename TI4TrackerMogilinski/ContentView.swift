//
//  ContentView.swift
//  TI4TrackerMogilinski
//
//  Created by AARON MOGILINSKI on 10/26/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    
    @Environment(GameStore.self) private var gameStore
    
   // @Query var factions: [Faction]
    
   
    @State var falser = true
    @State var limit = "Factions"
    @State var gamer: Game? = nil
    
    var body: some View {
        
        
        
        
        
        
        
        NavigationStack {
        VStack {
            
            
            
            
            Text("Twilight Imperium 4th Edition Stat Tracker")
                .font(.custom("SLIDER", size: 42))
            
                .bold()
                .multilineTextAlignment(.center)
                .foregroundStyle(.blue)
                .padding()
            Text("No more Arguing over who won when, now you'll know!")
                .font(.custom("SLIDER", size: 24))
                .foregroundStyle(.blue)
                .multilineTextAlignment(.center)
                .padding(.bottom, 100)
            
//            Menu (limit){
//                ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
//                    Button("\(AppData.shared.factList[i].factionName)"){
//                        limit = AppData.shared.factList[i].factionName
//                    }
//                    
//                   
//                }
//                
//            }
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
                // new nav stack here
                
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
