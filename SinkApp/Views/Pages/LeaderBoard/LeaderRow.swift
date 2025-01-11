/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of leaders.
*/

import SwiftUI

struct LeaderRow: View {
    var leader: Leader

    var body: some View {
        HStack {
            leader.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(leader.name)

            Spacer()
        }
    }
}

#Preview {
    Group {
        LeaderRow(leader: leaders[0])
        LeaderRow(leader: leaders[1])
    }
}
