//
//  MotionSensorScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/05.
//

import SwiftUI
import Foundation
import CoreMotion

struct MotionSensorScreen: View {
    @ObservedObject var sensor = MotionSensor()
    
    var body: some View {
        VStack {
            Text("Acceleration")
            Text("x: \(sensor.acceX)")
            Text("y: \(sensor.acceY)")
            Text("z: \(sensor.acceZ)")
            Text("Rotation Rate")
            Text("x: \(sensor.rotX)")
            Text("y: \(sensor.rotY)")
            Text("z: \(sensor.rotZ)")
            Button(action: {
                sensor.isStarted
                ? sensor.stop()
                : sensor.start()
            }) {
                sensor.isStarted
                ? Text("STOP")
                : Text("START")
            }
        }.font(.system(size: 13))
    }
}

class MotionSensor: NSObject, ObservableObject {
    let motionManager = CMMotionManager()
    
    @Published var isStarted = false
    
    @Published var acceX = "0.0"
    @Published var acceY = "0.0"
    @Published var acceZ = "0.0"
    
    @Published var rotX = "0.0"
    @Published var rotY = "0.0"
    @Published var rotZ = "0.0"
    
    
    func start() {
        if motionManager.isDeviceMotionAvailable {
            motionManager.deviceMotionUpdateInterval = 0.5
            motionManager.startDeviceMotionUpdates(to: OperationQueue.current!,
                                                   withHandler: {(motion:CMDeviceMotion?, error:Error?) in
                self.updateMotionData(deviceMotion: motion!)
            })
        }
        
        isStarted = true
    }
    
    func stop() {
        isStarted = false
        motionManager.stopDeviceMotionUpdates()
    }
    
    private func updateMotionData(deviceMotion:CMDeviceMotion) {
        acceX = String(deviceMotion.userAcceleration.x)
        acceY = String(deviceMotion.userAcceleration.y)
        acceZ = String(deviceMotion.userAcceleration.z)
        rotX = String(deviceMotion.rotationRate.x)
        rotY = String(deviceMotion.rotationRate.y)
        rotZ = String(deviceMotion.rotationRate.z)
    }
    
}

struct MotionSensorScreen_Previews: PreviewProvider {
    static var previews: some View {
        MotionSensorScreen()
    }
}
