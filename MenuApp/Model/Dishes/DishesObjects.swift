//
//  DishesObjects.swift
//  MenuApp
//
//  Created by Александра Маслова on 02.07.2023.
//

import Foundation

struct Dish {
    let id: Int
    let name: String
    let price: Int
    let weight: Int
    let description: String
    let imageUrl: URL
    let tegs: [Tag]
}

enum Tag: String {
    case allMenu = "Все меню"
    case withFish = "С рыбой"
    case withRice = "С рисом"
    case salads = "Салаты"
}

enum DishesKeys {
    static let dishes = "dishes"
    static let id = "id"
    static let name = "name"
    static let price = "price"
    static let weight = "weight"
    static let description = "description"
    static let imageUrl = "image_url"
    static let tegs = "tegs"
}
