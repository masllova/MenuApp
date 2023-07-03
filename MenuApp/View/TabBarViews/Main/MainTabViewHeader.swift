//
//  MainTabViewHeader.swift
//  MenuApp
//
//  Created by Александра Маслова on 03.07.2023.
//

import SwiftUI

struct MainTabViewHeader: View {
    var body: some View {
        VStack(alignment: .center) {
            headerView()
        }
        
        .foregroundColor(.white)
    }
    
    func headerView() -> some View {
        HStack(alignment: .top) {
            Image("geolocation")
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.top, 2)
            
            VStack(alignment: .leading) {
                Text(cityName())
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                Text(getCurrentDate())
                    .font(.system(size: 14))
                    .foregroundColor(.black.opacity(0.5))
            }
            Spacer()
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.black.opacity(0.5))
                .padding(.horizontal, 16)
                
        }.padding(.bottom, 8)
        .frame(maxWidth: .infinity, idealHeight: 101)
    }
    
    func cityName() -> String {
        return "Санкт-Петербург"
    }
    func getCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "d MMMM, yyyy"
        let dateString = dateFormatter.string(from: Date())
        let capitalizedDateString = dateString.capitalized
        return capitalizedDateString
    }
}

struct MainTabViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainTabViewHeader()
    }
}
