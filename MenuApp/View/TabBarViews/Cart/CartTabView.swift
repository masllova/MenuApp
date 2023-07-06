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
                           DishInCard(dish: dish)
                        }
                    }.padding(.top, 23)
                }
                Spacer()
                if dataStore.purchaseAmount > 0 {
                    payButton
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
    
    var payButton: some View {
        Button {
            //
        } label: {
            Text("Оплатить \(dataStore.purchaseAmount) ₽")
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .frame(width: 343, height: 48)
                    
                )
        }.frame(width: 343, height: 48)
            .padding(.bottom, 16)
    }
}
