//
//  SoundPlayer.swift
//  SwiftUI-Intermediate
//
//  Created by KARLOS AGUIRRE on 7/29/23.
//

import AVKit

class SoundPlayer {
    var player: AVAudioPlayer?

    func play(url: URL) {
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("Error creating AVAudioPlayer: \(error)")
        }
    }
}
