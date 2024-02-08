//
//  Appetizer.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 07/02/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

enum MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's made with a lot of love and care. Please enjoy.",
                                           price: 9.99,
                                           imageURL: "https://i.imgur.com/2x6d3sM.png",
                                           calories: 99,
                                           protein: 19,
                                           carbs: 9)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
