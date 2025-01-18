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
        VStack {
            HStack(alignment: .top) {
                Text(game.name)
                    .frame(maxWidth: .infinity, alignment: .leading) // Left-aligned
                        
                Text("W")
                    .font(.title)
                    .offset(y: -5)
                    .frame(maxWidth: .infinity, alignment: .center) // Center-aligned
                
                Text("FrankieDEI")
                    .frame(maxWidth: .infinity, alignment: .trailing) // Right-aligned
            }
            
            HStack(alignment: .bottom) {
                Text("Niccevic111")
                    .frame(maxWidth: .infinity, alignment: .leading) // Left-aligned

                Text("+2.0")
                    .font(.title)
                    .offset(y: 5)
                    .frame(maxWidth: .infinity, alignment: .center) // Center-aligned
                Text("AC-130")
                    .frame(maxWidth: .infinity, alignment: .trailing) // Right-aligned
            }
        }
        //.padding(.horizontal)
        //Divider()
    }
}

#Preview {
    let games = [
        Game(name: "AHeller17", color: "Red"),
        Game(name: "Banana", color: "Yellow"),
        Game(name: "Cherry", color: "Red"),
        Game(name: "Grapes", color: "Purple")
    ]
    GamePlayed(game: games[0])
}
