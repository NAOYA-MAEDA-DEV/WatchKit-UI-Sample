//
//  SliderScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct SliderScreen: View {
    @State private var stepSliderValue = 0.0
    @State private var nonStepSliderValue = 0.0
    
    var body: some View {
        VStack() {
            Text("\(stepSliderValue)")
            Slider(value: $stepSliderValue, in: 0...1, step: 0.1)
            Spacer()
            Text("\(nonStepSliderValue)")
            Slider(value: $nonStepSliderValue, in: 0...1)

        }
    }
}

struct SliderScreen_Previews: PreviewProvider {
    static var previews: some View {
        SliderScreen()
    }
}
