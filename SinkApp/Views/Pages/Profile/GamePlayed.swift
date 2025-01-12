//
//  GamePlayed.swift
//  SinkApp
//
//  Created by Andrew Heller on 1/11/25.
//

import SwiftUI

struct GamePlayed: View {
    var game: Game
    
    var body: some View {
        //Divider()
        VStack{
            HStack(alignment: .top){
                Text(game.name)
                //Text("Elo")
                //Text("Change")
                Spacer()
                Text("W")
                    .font(.title)
                    .offset(y: -5)
                Spacer()
               // Text("Change")
               // Text("Elo")
                Text("Name")
            }
            HStack(alignment: .bottom){
                Text("Name")
                //Text("Elo")
                //Text("Change")
                Spacer()
                Text("Diff")
                    .font(.title)
                    .offset(y: 5)
                Spacer()
               // Text("Change")
                //Text("Elo")
                Text("Name")
            }
        }
        .padding(.horizontal)
        //Divider()
    }
}

#Preview {
    let games = [
        Game(name: "Apple", color: "Red"),
        Game(name: "Banana", color: "Yellow"),
        Game(name: "Cherry", color: "Red"),
        Game(name: "Grapes", color: "Purple")
    ]
    GamePlayed(game: games[0])
}
