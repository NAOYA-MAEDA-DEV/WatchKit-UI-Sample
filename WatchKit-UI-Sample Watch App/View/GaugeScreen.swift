//
//  GaugeScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct GaugeScreen: View {
    @State private var currentValue = 0.0
    private let minValue = 0.0
    private let maxValue = 100.0

    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Gauge(value: currentValue ,in: minValue...maxValue){
            Text("Gauge Label")
        } currentValueLabel: {
            Text("\(Int(currentValue))")
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }
        .onReceive(timer) { _ in
            if currentValue < 100 {
                currentValue += 1
            }
        }
    }
}

struct GaugeScreen_Previews: PreviewProvider {
    static var previews: some View {
        GaugeScreen()
    }
}
