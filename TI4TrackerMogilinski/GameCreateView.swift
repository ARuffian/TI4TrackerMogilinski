//
//  GameCreateView.swift
//  TI4TrackerMogilinski
//
//  Created by AARON MOGILINSKI on 10/27/26.
//

import SwiftUI
import SwiftData

struct GameCreateView: View {
    @State var stringity1 = "Faction 1"
    @State var color1 = "Color 1"
    @State var creator1: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity2 = "Faction 2"
    @State var color2 = "Color 2"
    @State var creator2: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity3 = "Faction 3"
    @State var color3 = "Color 3"
    @State var creator3: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity4 = "Faction 4"
    @State var color4 = "Color 4"
    @State var creator4: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity5 = "Faction 5"
    @State var color5 = "Color 5"
    @State var creator5: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity6 = "Faction 6"
    @State var color6 = "Color 6"
    @State var creator6: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity7 = "Faction 7"
    @State var color7 = "Color 7"
    @State var creator7: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var stringity8 = "Faction 8"
    @State var color8 = "Color 8"
    @State var creator8: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    @State var winnerFill = "Who won?"
    
    @State var winning: Faction = Faction(factionName: "", factionWins: 0, factionLosses: 0, factionTotalUses: 0)
    
    
    @Environment(GameStore.self) private var gameStore
    
    
    
    
    var body: some View {
        // @Bindable var gameStore = gameStore
        
        ScrollView{
            VStack {
                ZStack{
                    
                    Text("TI4 Stat Tracker")
                        .font(.custom("SLIDER", size: 43))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                        .padding()
                    Text("TI4 Stat Tracker")
                        .font(.custom("SLIDER", size: 42))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding()
//                    Text("TI4 Stat Tracker Game Creation Menu")
//                        .font(.custom("SLIDER", size: 42))
//                        .bold()
//                        .multilineTextAlignment(.center)
//                        .foregroundStyle(.blue)
//                        .padding()
                }
                
                
                
                Text("Go through and select the faction names and colors correlating to your game, select the N/A option if you have extra player slots at the end. Imperative to put players starting lowest and not skipping any.")
                    .font(.custom("SLIDER", size: 24))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.blue)
                    .padding(.bottom)
                
                HStack{
                    ZStack{
                        
                        VStack{
                            Menu (stringity1){
                                ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                    Button("\(AppData.shared.factList[i].factionName)"){
                                        stringity1 = AppData.shared.factList[i].factionName
                                        creator1 = AppData.shared.factList[i]
                                    }
                                    
                                    
                                }
                                
                            }
                            .frame(width: 150)
                            .font(.custom("SLIDER", size: 24))
                            .bold()
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.blue)
                            .padding(.horizontal)
                            .background(.black)
                            .cornerRadius(45)
                            .padding(10)
                            
                            
                            Menu (color1){
                                ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                    Button("\(AppData.shared.colors[i])"){
                                        color1 = AppData.shared.colors[i]
                                    }
                                    
                                    
                                }
                                
                            }
                            .font(.custom("SLIDER", size: 24))
                            .frame(width: 150)
                            .bold()
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.blue)
                            .padding(.horizontal)
                            .background(.black)
                            .cornerRadius(45)
                            .padding(1)
                        }
                    }
                    VStack{
                        Menu (stringity2){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                Button("\(AppData.shared.factList[i].factionName)"){
                                    stringity2 = AppData.shared.factList[i].factionName
                                    creator2 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color2){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                Button("\(AppData.shared.colors[i])"){
                                    color2 = AppData.shared.colors[i]
                                }
                                
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                }
                .padding()
                
                HStack{
                    VStack{
                        Menu (stringity3){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                Button("\(AppData.shared.factList[i].factionName)"){
                                    stringity3 = AppData.shared.factList[i].factionName
                                    creator3 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color3){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                let screwyou = AppData.shared.colors[i]
                                Button("\(screwyou)"){
                                    color3 = AppData.shared.colors[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                    
                    VStack{
                        Menu (stringity4){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                 var dieInAHole = AppData.shared.factList[i].factionName
                                Button("\(dieInAHole)"){
                                    stringity4 = AppData.shared.factList[i].factionName
                                    creator4 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color4){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                Button("\(AppData.shared.colors[i])"){
                                    color4 = AppData.shared.colors[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                }
                .padding()
                
                HStack{
                    VStack{
                        Menu (stringity5){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                let iHateSwift = AppData.shared.factList[i].factionName
                                Button("\(iHateSwift)"){
                                    stringity5 = AppData.shared.factList[i].factionName
                                    creator5 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color5){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                Button("\(AppData.shared.colors[i])"){
                                    color5 = AppData.shared.colors[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                    
                    VStack{
                        Menu (stringity6){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                var blah = AppData.shared.factList[i].factionName
                                Button("\(blah)"){
                                    stringity6 = AppData.shared.factList[i].factionName
                                    creator6 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color6){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                Button("\(AppData.shared.colors[i])"){
                                    color6 = AppData.shared.colors[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                }
                .padding()
                
                HStack{
                    VStack{
                        Menu (stringity7){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                Button("\(AppData.shared.factList[i].factionName)"){
                                    stringity7 = AppData.shared.factList[i].factionName
                                    creator7 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color7){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                Button("\(AppData.shared.colors[i])"){
                                    color7 = AppData.shared.colors[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                    
                    VStack{
                        Menu (stringity8){
                            ForEach(0..<AppData.shared.factList.count, id: \.self) { i in
                                var tree = AppData.shared.factList[i].factionName
                                Button("\(tree)"){
                                    stringity8 = AppData.shared.factList[i].factionName
                                    creator8 = AppData.shared.factList[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(10)
                        
                        Menu (color8){
                            ForEach(0..<AppData.shared.colors.count, id: \.self) { i in
                                Button("\(AppData.shared.colors[i])"){
                                    color8 = AppData.shared.colors[i]
                                }
                                
                                
                            }
                            
                        }
                        .font(.custom("SLIDER", size: 24))
                        .frame(width: 150)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                        .padding(.horizontal)
                        .background(.black)
                        .cornerRadius(45)
                        .padding(1)
                    }
                }
                .padding()
                
                Text("Winner:")
                    .font(.custom("SLIDER", size: 24))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.blue)
                    
                Menu("\(winnerFill)"){
                    Button("Player 1"){
                        winnerFill = "Player 1"
                        winning = creator1
                    }
                    Button("Player 2"){
                        winnerFill = "Player 2"
                        winning = creator2
                    }
                    Button("Player 3"){
                        winnerFill = "Player 3"
                        winning = creator3
                    }
                    Button("Player 4"){
                        winnerFill = "Player 4"
                        winning = creator4
                    }
                    Button("Player 5"){
                        winnerFill = "Player 5"
                        winning = creator5
                    }
                    Button("Player 6"){
                        winnerFill = "Player 6"
                        winning = creator6
                    }
                    Button("Player 7"){
                        winnerFill = "Player 7"
                        winning = creator7
                    }
                    Button("Player 8"){
                        winnerFill = "Player 8"
                        winning = creator8
                    }
                }
                .frame(width: 150)
                .font(.custom("SLIDER", size: 24))
                .bold()
                .multilineTextAlignment(.center)
                .foregroundStyle(.blue)
                .padding(.horizontal)
                .background(.black)
                .cornerRadius(45)
                .padding(1)
                
                Button("Record Game"){
                    gameStore.games.append(Game(faction1: creator1, color1: color1, faction2: creator2, color2: color2, faction3: creator3, color3: color3, faction4: creator4, color4: color4, faction5: creator5, color5: color5, faction6: creator6, color6: color6, faction7: creator7, color7: color7, faction8: creator8, color8: color8, winner: winning))
                    
                    
                }
                .frame(width: 150)
                .font(.custom("SLIDER", size: 24))
                .bold()
                .multilineTextAlignment(.center)
                .foregroundStyle(.blue)
                .padding(.horizontal)
                .background(.black)
                .cornerRadius(45)
                .padding(10)
                
                
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppData.shared.goodPurple)
    }
}

#Preview {
    GameCreateView()
}
