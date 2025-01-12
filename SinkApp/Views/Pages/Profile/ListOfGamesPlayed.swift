//
//  ListOfGamesPlayed.swift
//  SinkApp
//
//  Created by Andrew Heller on 1/11/25.
//

import SwiftUI


struct ListOfGamesPlayed: View {
    @State private var searchText = ""
        let games = [
            Game(name: "Apple", color: "Red"),
            Game(name: "Banana", color: "Yellow"),
            Game(name: "Cherry", color: "Red"),
            Game(name: "Grapes", color: "Purple")
        ]

        var filteredGames: [Game] {
            if searchText.isEmpty {
                return games
            } else {
                return games.filter { $0.name.lowercased().contains(searchText.lowercased()) }
            }
        }

        var body: some View {
            NavigationView {
                List(filteredGames) { game in
                    GamePlayed(game: game)

                }
                .searchable(text: $searchText)
            }
        }

}

#Preview {
    ListOfGamesPlayed()
}
