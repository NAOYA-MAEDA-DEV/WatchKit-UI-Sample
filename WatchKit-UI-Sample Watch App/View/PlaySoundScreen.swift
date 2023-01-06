//
//  PlaySoundScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/05.
//

import SwiftUI
import AVFoundation

struct PlaySoundScreen: View {
    @State var audioPlayer: AVAudioPlayer!

    var body: some View {
        Button(action: {
            playSound("dog.wav")
        }) {
            Text("Play Sound")
        }
    }

    private func playSound(_ soundFileName : String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
            fatalError("Unable to find \(soundFileName) in bundle")
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        audioPlayer.play()
    }
}

struct PlaySoundScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlaySoundScreen()
    }
}
