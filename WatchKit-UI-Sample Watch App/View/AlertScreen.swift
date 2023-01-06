//
// AlertScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct AlertScreen: View {
    @State private var isPresented = false

    var body: some View {
        Button("Show Alert") {
            isPresented = true
        }
        .alert("Hello Alert", isPresented: $isPresented) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct AlertScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlertScreen()
    }
}
