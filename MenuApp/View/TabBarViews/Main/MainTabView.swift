//
//  MainTabView.swift
//  MenuApp
//
//  Created by Александра Маслова on 03.07.2023.
//

import SwiftUI

struct MainTabView: View {
    @ObservedObject var categoriesManager: CategoriesManager
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack(spacing: 8) {
                        ForEach(categoriesManager.categories) { category in
                            NavigationLink(destination: CategoryDetailView(category: category)) {
                                AsyncImage(url: category.imageUrl) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 343, height: 148)
                                } placeholder: {
                                    ProgressView()
                                        .frame(width: 343, height: 148)
                                }
                            }
                        }
                    }.padding(.top, 8)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Spacer()
                        MainTabViewHeader()
                    }
                }
            }
        }
        .onAppear {
            categoriesManager.fetchCategories()
        }
    }
}


struct CategoryDetailView: View {
    var category: Category
    
    var body: some View {
        Text(category.name)
            .navigationBarTitle(category.name, displayMode: .inline)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        let categoriesManager = CategoriesManager()
        return MainTabView(categoriesManager: categoriesManager)
    }
}
