//
//  Location.swift
//  Bucketlist
//
//  Created by Paul Onawola on 15/09/2023.
//

import Foundation
import CoreLocation

struct Location: Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static func == (lhs:Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}


extension Location {
    static let example = Location(name: "Buckingham Palace", description: "where Queen Elizabeth lives with her dogs", latitude: 51.501, longitude: -0.401)
}
