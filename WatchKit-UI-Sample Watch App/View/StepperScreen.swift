//
//  StepperScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct StepperScreen: View {
    @State private var stepperValue = 0
    
    var body: some View {
        VStack {
            Stepper(value: $stepperValue) {
                Text("\(stepperValue)")
            }
        }
    }
}

struct StepperScreen_Previews: PreviewProvider {
    static var previews: some View {
        StepperScreen()
    }
}
