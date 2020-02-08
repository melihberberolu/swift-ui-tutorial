//
//  Heroes.swift
//  Lesson-1
//
//  Created by Melih Berberoglu on 2/8/20.
//  Copyright © 2020 Melih Berberoglu. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Heroes: Hashable, Codable, Identifiable {
    var id: Int
    var type: String
    var name: String
    var power: String
    var state: String
    var category: Category
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case basic = "Basic"
        case star = "Star"
        case epic = "Epic"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
