//
//  TabScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView() {
            Text("Tab Content 1").tabItem {
                Text("Tab Label 1")
            }.tag(1)
            Text("Tab Content 2").tabItem {
                Text("Tab Label 2")
            }.tag(2)
        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
