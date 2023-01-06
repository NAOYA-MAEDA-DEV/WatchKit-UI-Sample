//
//  ModalSheetScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/05.
//

import SwiftUI

struct ModalSheetScreen: View {
    @State private var isPresented = false

    var body: some View {
        Button(action: {
            self.isPresented.toggle()
        }) {
            Text("Show Modal View")
        }.sheet(isPresented: $isPresented) {
            Text("Modal View")
            .toolbar(content: {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Close") {
                        isPresented = false
                    }
                }
            })
        }
    }
}

struct ModalSheetScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheetScreen()
    }
}
