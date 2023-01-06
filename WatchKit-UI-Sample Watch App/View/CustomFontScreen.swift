//
//  CustomFontScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/05.
//

import SwiftUI

struct CustomFontScreen: View {
    var body: some View {
        Text("2013/12/12")
            .font(Font.custom("DS-Digital", size: 30))
            .foregroundColor(.yellow)
    }
}

struct CustomFontScreen_Previews: PreviewProvider {
    static var previews: some View {
        CustomFontScreen()
    }
}
