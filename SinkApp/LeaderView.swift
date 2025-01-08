//
//  ContentView.swift
//  SinkApp
//
//  Created by Nic Nikcevic on 1/6/25.
//

import SwiftUI

struct LeaderView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Red Box with "SINK" Text
                ZStack {
                    Color.red
                        .frame(height: geometry.size.height * 0.1)
                        .ignoresSafeArea() // Ensure it spans the top area, including the status bar
                    Text("SINK")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                }

                Spacer()
                
                // Centered Text
                Text("Leader Board")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                // Buttons at the Bottom in a Horizontal Line
                HStack(spacing: 16) {
                    Button("Button 1") {
                        // Action for Button 1
                    }
                    .buttonStyle(BlackButtonStyle())

                    Button("Button 2") {
                        // Action for Button 2
                    }
                    .buttonStyle(BlackButtonStyle())

                    Button("Button 3") {
                        // Action for Button 3
                    }
                    .buttonStyle(BlackButtonStyle())
                }
                .frame(height: geometry.size.height * 0.1) // Restrict to 10% of screen height
                .padding(.horizontal, 20) // Add spacing from screen edges
                .background(Color.white) // Optional background for the button area
            }
        }
    }
}

// Custom Button Style for Black Buttons
// Does not need to be redefined
// consider using a style sheet, to define everything in one place
struct BlackButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0) // Button press animation
    }
}

#Preview {
    LeaderView()
}

