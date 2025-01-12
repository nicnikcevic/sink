//
//  ContentView.swift
//  SinkApp
//
//  Created by Nic Nikcevic on 1/6/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileHeader()
                ListOfGamesPlayed()
                Spacer()
            }
        }
    }
}

#Preview {
    ProfileView()
}
