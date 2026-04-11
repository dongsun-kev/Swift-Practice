//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by DS on 4/11/26.
//

import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {
    
    @Test("Reset player scores", arguments: [0,10,20])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Kevin", score: 0),
            Player(name: "Andre", score: 5),
        ])
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
    
    @Test("Highest score wins")
    func highestScoreWins() {
        let scoreboard = Scoreboard(
            players: [
                Player(name: "Kevin", score: 0),
                Player(name: "Andre", score: 4)
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )
        let winners = scoreboard.winners
        #expect(winners == [Player(name: "Andre", score: 4)])
    }
            @Test("Lowest score wins")
            func lowestScoreWins() {
    let scoreboard = Scoreboard(
                    players: [
                        Player(name: "Kevin", score: 0),
                        Player(name: "Andre", score: 4)
                    ],
                    state: .gameOver,
                    doesHighestScoreWin: false
                )
                let winners = scoreboard.winners
                #expect(winners == [Player(name: "Kevin", score: 0)])
            }
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}
