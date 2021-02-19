//
//  MapView.swift
//  TestApp
//
//  Created by harami on 2021/02/17.
//

import SwiftUI
import MapKit

struct MapView: View {
    let cordinate:CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{setRegion(cordinate)}
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
