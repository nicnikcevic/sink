/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view showing a list of leaders.
*/

import SwiftUI

struct LeaderList: View {
    var body: some View {
        NavigationSplitView {
            List(leaders) { leader in
                NavigationLink {
                    LeaderDetail(leader: leader)
                } label: {
                    LeaderRow(leader: leader)
                }
            }
            .navigationTitle("Leaderboard")
        } detail: {
            Text("__Placeholder__")
        }
    }
}

#Preview {
    LeaderList()
}
