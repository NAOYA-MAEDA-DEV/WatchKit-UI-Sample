//
//  LabeledContentScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct LabeledContentScreen: View {
    var body: some View {
        LabeledContent("Title") {
            Text("SubTitle")
        }
    }
}

struct LabeledContentScreen_Previews: PreviewProvider {
    static var previews: some View {
        LabeledContentScreen()
    }
}
