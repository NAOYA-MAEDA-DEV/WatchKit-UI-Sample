//
//  ContentView.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI

struct ContentView: View {
    @State var kk = false
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("View")) {
                    Group {
                        NavigationLink(destination: TextScreen()) {
                            Text("Text")
                        }
                        NavigationLink(destination: LabelScreen()) {
                            Text("Label")
                        }
                        NavigationLink(destination: LabeledContentScreen()) {
                            Text("LabeledContent")
                        }
                        NavigationLink(destination: ButtonScreen()) {
                            Text("Button")
                        }
                        NavigationLink(destination: ImageScreen()) {
                            Text("Image")
                        }
                        NavigationLink(destination: SliderScreen()) {
                            Text("Slider")
                        }
                        NavigationLink(destination: StepperScreen()) {
                            Text("Stepper")
                        }
                        NavigationLink(destination: PickerScreen()) {
                            Text("Picker")
                        }
                        NavigationLink(destination: ProgressScreen()) {
                            Text("Progress")
                        }
                        NavigationLink(destination: GaugeScreen()) {
                            Text("Gauge")
                        }
                    }
                    Group {
                        NavigationLink(destination: ToggleScreen()) {
                            Text("Toggle")
                        }
                        NavigationLink(destination: TextFieldScreen()) {
                            Text("TextField")
                        }
                        NavigationLink(destination: SecureFieldScreen()) {
                            Text("SecureField")
                        }
                        NavigationLink(destination: CustomFontScreen()) {
                            Text("Custom Font")
                        }
                        NavigationLink(destination: ChartScreen()) {
                            Text("Chart")
                        }
                        NavigationLink(destination: MapScreen()) {
                            Text("Map")
                        }
                        NavigationLink(destination: SceneScreen()) {
                            Text("SCNScene")
                        }
                    }
                }
                Section(header: Text("Media")) {
                    Group {
                        NavigationLink(destination: PlayVideoScreen()) {
                            Text("Play Video")
                        }
                        NavigationLink(destination: PlaySoundScreen()) {
                            Text("Play Sound")
                        }
                        NavigationLink(destination: NowPlayingViewScreen()) {
                            Text("NowPlayingView")
                        }
                    }
                }
                Section(header: Text("Transition")) {
                    Group {
                        NavigationLink(destination: NavigationLinkScreen()) {
                            Text("NavigationLink")
                        }
                        NavigationLink(destination: ModalSheetScreen()) {
                            Text("Modal Sheet")
                        }
                        NavigationLink(destination: TabScreen()) {
                            Text("Tab")
                        }
                        NavigationLink(destination: AlertScreen()) {
                            Text("Alert")
                        }
                    }
                }
                Section(header: Text("Other")) {
                    NavigationLink(destination: DigitalCrownScreen()) {
                        Text("Digital Crown")
                    }
                    NavigationLink(destination: HapticFeedbackScreen()) {
                        Text("Haptic Feedback")
                    }
                    NavigationLink(destination: TapLocationScreen()) {
                        Text("Detect Tap Location")
                    }
                    NavigationLink(destination: MotionSensorScreen()) {
                        Text("Motion Sensor")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
