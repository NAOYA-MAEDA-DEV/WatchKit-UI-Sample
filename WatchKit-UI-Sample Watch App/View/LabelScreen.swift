//
//  LabelScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct LabelScreen: View {
    var body: some View {
        Label("Label", systemImage: "face.smiling.fill")
    }
}

struct LabelScreen_Previews: PreviewProvider {
    static var previews: some View {
        LabelScreen()
    }
}
