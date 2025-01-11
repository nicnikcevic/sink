//
//  TopView.swift
//  SinkApp
//
//  Created by Andrew Heller on 1/11/25.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        VStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.red) // Set your desired color
                        .frame(height: 75) // Set height
                }
                .edgesIgnoringSafeArea(.top) // Ignore safe area for full screen usage
    }
}

#Preview {
    TopView()
}
