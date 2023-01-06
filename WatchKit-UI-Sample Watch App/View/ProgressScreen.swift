//
//  ProgressScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct ProgressScreen: View {
    @State private var progressValue = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 30) {
            ProgressView()
            ProgressView("\(Int(progressValue))%", value: progressValue, total: 100)
                .progressViewStyle(CircularProgressViewStyle())
            ProgressView("\(Int(progressValue))%", value: progressValue, total: 100)
                .onReceive(timer) { _ in
                    if progressValue < 100 {
                        progressValue += 1
                    }
                }
        }
    }
}

struct ProgressScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProgressScreen()
    }
}
