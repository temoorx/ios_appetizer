//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mac on 21/04/2024.
//

import Foundation

struct Appetizer : Decodable, Identifiable{
    let id: Int
    let name: String
    let description : String
    let price: Double
    let imageURL: String
    let calories: Int
    let protien: Int
    let carbs: Int
}

struct AppetizerResponse{
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Test", description: "test description", price: 10.22, imageURL: "", calories: 20, protien: 12, carbs:20 )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
