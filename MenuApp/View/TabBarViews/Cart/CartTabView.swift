//
//  CartTabView.swift
//  MenuApp
//
//  Created by Александра Маслова on 03.07.2023.
//

import SwiftUI

struct CartTabView: View {
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack(spacing: 8) {
                        ForEach(dataStore.dishesInCart, id: \.id) { dish in
                           // view
                        }
                    }.padding(.top, 8)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                   TabViewHeader()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    UsersIcon()
                }
            }
        }
        
        
    }

}

struct CartTabView_Previews: PreviewProvider {
    static var previews: some View {
        CartTabView()
    }
}
