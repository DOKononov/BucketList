//
//  ContentView.swift
//  BucketList
//
//  Created by Dmitry Kononov on 29.09.25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    let startPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: .init(latitude: 53, longitude: 28),
            span: .init(latitudeDelta: 10, longitudeDelta: 10)
        )
    )
    
    @State private var locations: [Location] = []
    
    
    var body: some View {
        MapReader { proxy in
            Map(initialPosition: startPosition) {
                ForEach(locations) { location in
                    Marker(location.name, coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude))
                    
                }
            }
                .onTapGesture { position in
                    if let coordinate = proxy.convert(position, from: .local) {
                        let newLocation = Location(
                            id: UUID(),
                            name: "New location",
                            description: "",
                            latitude: coordinate.latitude,
                            longitude: coordinate.longitude
                        )
                        locations.append(newLocation)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
