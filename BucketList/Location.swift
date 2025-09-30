//
//  Location.swift
//  BucketList
//
//  Created by Dmitry Kononov on 30.09.25.
//

import Foundation
import MapKit

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
#if DEBUG
    static let example: Location = .init(id: UUID(), name: "Buckingham Palace", description: "Some description", latitude: 51.501, longitude: -0.141)
#endif
    
    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}
