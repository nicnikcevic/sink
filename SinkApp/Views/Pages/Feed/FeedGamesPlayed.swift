//
//  ListOfGamesPlayed.swift
//  SinkApp
//
//  Created by Andrew Heller on 1/11/25.
//

import SwiftUI


struct FeedGamesPlayed: View {
    @State private var searchText = ""
        let games = [
            Game(name: "Apple", color: "Red"),
            Game(name: "Banana", color: "Yellow"),
            Game(name: "Cherry", color: "Red"),
            Game(name: "Grapes", color: "Purple"),
            Game(name: "Apple", color: "Red"),
            Game(name: "Banana", color: "Yellow"),
            Game(name: "Cherry", color: "Red"),
            Game(name: "Grapes", color: "Purple"),
            Game(name: "Apple", color: "Red"),
            Game(name: "Banana", color: "Yellow"),
            Game(name: "Cherry", color: "Red"),
            Game(name: "Grapes", color: "Purple"),
            Game(name: "Grapes", color: "Purple")
        ]
        
        var body: some View {
            NavigationView {
                List(games) { game in
                    GamePlayed(game: game)
                }
                .navigationTitle("Games Played") // Optional: Set navigation title
            }
        }

}

#Preview {
    FeedGamesPlayed()
}
