//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by DS on 4/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [String] = ["Kevin", "Andre", "Jasmine"]
    @State private var Scores: [Int] = [0, 0, 0]
    
    var body: some View {
        VStack {
            ForEach(0..<players.count, id: \.description) { index in
                TextField("Name", text: $players[index])
                Stepper("\(Scores[index])", value: $Scores[index])
            }
            Button("Add Player", systemImage: "plus") {
                players.append("")
                Scores.append(0)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
