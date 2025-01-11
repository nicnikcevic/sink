/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A representation of a single leader.
*/

import Foundation
import SwiftUI
import CoreLocation

struct Leader: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    // Map JSON keys to Swift property names
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case park
        case state
        case description
        case imageName
        case coordinates
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
