//
//  TapLocationScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct TapLocationScreen: View {
    @State private var tapLocation = CGPoint.zero
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
                .onTapGesture(coordinateSpace: .global) { location in
                    self.tapLocation = location
            }
            Text("x: \(Int(tapLocation.x)) y: \(Int(tapLocation.y))")
                .foregroundColor(.black)
        }
    }
}

struct TapLocationScreen_Previews: PreviewProvider {
    static var previews: some View {
        TapLocationScreen()
    }
}
