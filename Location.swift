//
//  Location.swift
//  Travel_app
//
//  Created by Marcin Basinski on 06/10/2021.
//

import Foundation

struct Location: Decodable, Identifiable { // new custom data structure
    let id: Int // properties
    let name: String // properties
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit", more: "more text here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!")
}
