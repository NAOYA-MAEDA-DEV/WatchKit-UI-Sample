//
//  MapScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct MapScreen: View {
    @ObservedObject private var manager = LocationManager()
    @State private var userTrackingMode: MapUserTrackingMode = .follow

    var body: some View {
        ZStack {
            Map(coordinateRegion: $manager.mapRegion,
                showsUserLocation: true,
                userTrackingMode: $userTrackingMode
            )
        }
    }
}

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    @Published var location = CLLocation()
    @Published var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
        latitudinalMeters: 10000,
        longitudinalMeters: 10000
    )

    override init() {
        super.init()
        self.manager.delegate = self
        self.manager.requestWhenInUseAuthorization()
        self.manager.desiredAccuracy = kCLLocationAccuracyBest
        self.manager.distanceFilter = 2
        self.manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        mapRegion.center.longitude = locations.last!.coordinate.longitude
        mapRegion.center.latitude = locations.last!.coordinate.latitude
    }
}

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
