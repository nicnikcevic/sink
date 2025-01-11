/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view showing the details for a leader.
*/

import SwiftUI

struct LeaderDetail: View {
    var leader: Leader

    var body: some View {
        ScrollView {
            MapView(coordinate: leader.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: leader.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(leader.name)
                    .font(.title)

                HStack {
                    Text(leader.park)
                    Spacer()
                    Text(leader.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("About \(leader.name)")
                    .font(.title2)
                Text(leader.description)
            }
            .padding()
        }
        .navigationTitle(leader.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LeaderDetail(leader: leaders[0])
}
