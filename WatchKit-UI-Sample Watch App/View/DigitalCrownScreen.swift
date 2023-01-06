//
//  DigitalCrownScree.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct DigitalCrownScreen: View {
    @State private var scrollAmount = 0.0

    var body: some View {
        Text("Scroll: \(scrollAmount)")
            .focusable(true)
            .digitalCrownRotation($scrollAmount)
    }
}

struct DigitalCrownScreen_Previews: PreviewProvider {
    static var previews: some View {
        DigitalCrownScreen()
    }
}
