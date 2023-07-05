//
//  DataStore.swift
//  MenuApp
//
//  Created by Александра Маслова on 05.07.2023.
//

import Foundation

class DataStore: ObservableObject {
    @Published var dishesInCart: [Dish] = []
    
    func addItem(_ dish: Dish) {
        dishesInCart.append(dish)
    }
}
