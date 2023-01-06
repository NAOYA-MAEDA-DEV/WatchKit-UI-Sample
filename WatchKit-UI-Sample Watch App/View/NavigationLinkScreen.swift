//
//  NavigationLinkScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct NavigationLinkScreen: View {
    private let animals = ["🐶", "🐱", "🐥", "🐹"]

    var body: some View {
        List {
            ForEach(animals, id: \.self) { item in
                NavigationLink(
                    destination: Text(item),
                    label: {
                        Text(item)
                    }
                )
            }
        }
    }
}

struct NavigationLinkScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkScreen()
    }
}
