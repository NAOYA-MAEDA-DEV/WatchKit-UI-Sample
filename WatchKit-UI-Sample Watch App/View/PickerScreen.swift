//
//  PickerScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct PickerScreen: View {
    @State private var selectedColor = UIColor.red
    
    var body: some View {
        VStack(spacing: 30) {
            Picker("Select Color", selection: $selectedColor) {
                Text("Red").tag(UIColor.red)
                Text("Yellow").tag(UIColor.yellow)
                Text("Green").tag(UIColor.green)
            }
            Form {
                Picker("Select Color", selection: $selectedColor) {
                    Text("Red").tag(UIColor.red)
                    Text("Yellow").tag(UIColor.yellow)
                    Text("Green").tag(UIColor.green)
                }
            }
        }
    }
}

struct PickerScreen_Previews: PreviewProvider {
    static var previews: some View {
        PickerScreen()
    }
}
