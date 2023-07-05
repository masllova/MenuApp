//
//  DishInCard.swift
//  MenuApp
//
//  Created by Александра Маслова on 05.07.2023.
//

import SwiftUI

struct DishInCard: View {
    @EnvironmentObject var dataStore: DataStore
    
    var dish: Dish?
    @State var count = 1
    
    var body: some View {
        HStack(spacing: 8) {
            imageView
            infPanel
            Spacer()
            countPanel
        }.padding(.horizontal, 16)
            .padding(.vertical, 8)
        
    }
    var imageView: some View {
        ZStack(alignment: .center) {
            if let dish = dish {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(red: 0.97, green: 0.97, blue: 0.96))
                    .frame(width: 62, height: 62)
                
                AsyncImage(url: dish.imageUrl) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 55, height: 55)
                } placeholder: {
                    ProgressView()
                        .frame(width: 55, height: 55)
                }
                
            }
        }.frame(width: 62, height: 62)
    }
    
    var infPanel: some View {
        
        VStack (spacing: 4) {
            if let dish = dish {
                Text(dish.name)
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                    .frame(width: 94, alignment: .leading)
                
                HStack (spacing: 0) {
                    Text("\(dish.price) ₽")
                        .foregroundColor(.black)
                    Text(" · \(dish.weight)г")
                        .foregroundColor(.black.opacity(0.4))
                    Spacer()
                }.font(.system(size: 14))
                    .frame(width: 94, alignment: .leading)
                
            }
        }
    }
    
    var countPanel: some View {
        HStack(spacing: 16) {
            Button {
                if count > 1 {
                    count += 1
                } else {
                    if let dish = dish {
                        dataStore.deleteItem(dish)
                    }
                }
            } label: {
                Image("minuse")
            }

            Text("\(count)")
                .foregroundColor(.black)
                .font(.system(size: 14))
            
            Button {
                count += 1
            } label: {
                Image("plus")
            }
        }.padding(.horizontal, 6)
            .padding(.vertical, 4)
            .background(Color(red: 0.94, green: 0.93, blue: 0.93))
            .cornerRadius(10)
    }
}
