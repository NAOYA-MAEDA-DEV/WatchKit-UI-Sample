//
//  HapticScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct HapticFeedbackScreen: View {
    private let types: [String] = [
        "start",
        "stop",
        "retry",
        "success",
        "failure",
        "click",
        "notification",
        "directionUp",
        "directionDown",
    ]
    
    var body: some View {
        List{
            ForEach(0 ..< types.count, id: \.self) { id in
                Button(types[id]) {
                    knock(type: WKHapticType(rawValue: id))
                }
            }
        }
    }
    
    private func knock(type: WKHapticType?) {
        guard let nType = type else { return }
        WKInterfaceDevice.current().play(nType)
    }
}

struct HapticFeedbackScreen_Previews: PreviewProvider {
    static var previews: some View {
        HapticFeedbackScreen()
    }
}
