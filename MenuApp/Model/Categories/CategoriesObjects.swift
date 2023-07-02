//
//  CategoriesObjects.swift
//  MenuApp
//
//  Created by Александра Маслова on 02.07.2023.
//

import Foundation

struct Category {
    let id: Int
    let name: String
    let imageUrl: URL
}

enum CategoriesKeys {
      static let сategories = "сategories"
      static let id = "id"
      static let name = "name"
      static let imageUrl = "image_url"
  }
