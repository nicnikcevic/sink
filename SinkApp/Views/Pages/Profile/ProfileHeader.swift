//
//  ProfileHeader.swift
//  SinkApp
//
//  Created by Andrew Heller on 1/11/25.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack{
            HStack{
                Text("Firstname Lastname")
                    .font(.title)
                Spacer()
                Text("Elo")
            }
            //.padding(.vertical)
            HStack{
                Text("Username")
                    .font(.subheadline)
                Spacer()
                Text("Ranking")
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.red)
    }
}

#Preview {
    ProfileHeader()
}
