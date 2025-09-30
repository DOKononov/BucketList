//
//  Location.swift
//  BucketList
//
//  Created by Dmitry Kononov on 30.09.25.
//

import Foundation

struct Location: Codable, Equatable, Identifiable {
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
}
