//
//  TextFieldScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct TextFieldScreen: View {
    @State private var name = ""
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, \(name)")
            TextField("Enter your name", text: $name)
        }
    }
}

struct TextFieldScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldScreen()
    }
}
