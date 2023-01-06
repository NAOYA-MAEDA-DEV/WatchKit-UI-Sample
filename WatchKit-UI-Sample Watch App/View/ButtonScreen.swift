//
//  ButtonScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct ButtonScreen: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("\(counter)")
            Button(action: {
                counter += 1
            }) {
                Text("Increment")
            }
        }
    }
}

struct ButtonScreen_Previews: PreviewProvider {
    static var previews: some View {
        ButtonScreen()
    }
}
