//
//  ContentView.swift
//  SinkApp
//
//  Created by Andrew Heller on 1/11/25.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .feed

    enum Tab {
        case feed
        case friend
        case addGame
        case leaderboard
        case profile
    }

    var body: some View {
        VStack {
            TopView()

            TabView(selection: $selection) {
                FeedView()
                    .tabItem {
                        Label("Feed", systemImage: "house")
                    }
                    .tag(Tab.feed)

                FriendView()
                    .tabItem {
                        Label("Friends", systemImage: "list.number")
                    }
                    .tag(Tab.friend)
                
                AddGameView()
                    .tabItem {
                        Label("Add Game", systemImage: "plus.app")
                    }
                    .tag(Tab.addGame)

                LeaderList()
                    .tabItem {
                        Label("Leaderboard", systemImage: "list.number")
                    }
                    .tag(Tab.leaderboard)

                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    .tag(Tab.profile)
                TopView()
                    .offset(y: -100)
            }
        }
    }
}


#Preview {
    ContentView()
}
