//
//  ContentView.swift
//  NTOU VOL
//
//  Created by Jesse Liang on 2024/8/17.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Logo image
                Image("NTOU") // Replace with the name of your image in Assets
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding()

                // App title
                Text("NTOU VOL")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                // Navigation buttons
                NavigationLink(destination: PlayGameView()) {
                    Text("Scoreboard")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }

                NavigationLink(destination: TrainingView()) {
                    Text("Game")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }

                NavigationLink(destination: SettingsView()) {
                    Text("Settings")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }

                Spacer() // Pushes content up
            }

        }
    }
}

struct PlayGameView: View {
    var body: some View {
        Text("Play Game View")
            .font(.largeTitle)
            .navigationBarTitle("Play Game", displayMode: .inline)
    }
}

struct TrainingView: View {
    var body: some View {
        Text("Training View")
            .font(.largeTitle)
            .navigationBarTitle("Training", displayMode: .inline)
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings View")
            .font(.largeTitle)
            .navigationBarTitle("Settings", displayMode: .inline)
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

