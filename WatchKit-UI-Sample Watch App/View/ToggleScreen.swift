//
//  ToggleScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct ToggleScreen: View {
    @State private var flag = true
    
    var body: some View {
        Toggle("Toggle", isOn: $flag)
            .padding()
    }
}

struct ToggleScreen_Previews: PreviewProvider {
    static var previews: some View {
        ToggleScreen()
    }
}
