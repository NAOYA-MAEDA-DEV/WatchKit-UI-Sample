//
//  PlayVideoScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI
import AVKit
import AVFoundation

struct PlayVideoScreen: View {
    private let path = Bundle.main.path(forResource: "sea", ofType: "mp4")
    
    var body: some View {
        let url = URL(fileURLWithPath: path!)
        let player = AVPlayer.init(url: url)
        
        VideoPlayer(player: player)
    }
}

struct PlayVideoScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlayVideoScreen()
    }
}
