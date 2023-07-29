//
//  AVAudioPlayerView.swift
//  SwiftUI-Intermediate
//
//  Created by KARLOS AGUIRRE on 7/29/23.
//

import SwiftUI
import AVKit

struct SoundModel: Hashable {
    let name: String
    
    func getURL() -> URL {
        return URL(string: Bundle.main.path(forResource: self.name, ofType: "caf")!)!
    }
}

let arrayOfSounds:[SoundModel] = [
    .init(name: "sound-01"),
    .init(name: "sound-02"),
    .init(name: "sound-03"),
    .init(name: "sound-04"),
    .init(name: "sound-05")
]

struct AVAudioPlayerView: View {
    private let soundPlayer = SoundPlayer()
    var body: some View {
        List {
            ForEach(arrayOfSounds, id: \.self) { sound in
                Button("Play \(sound.name)") {
                    soundPlayer.play(url: sound.getURL())
                }                
            }
        }
    }
}

struct AVAudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AVAudioPlayerView()
    }
}
