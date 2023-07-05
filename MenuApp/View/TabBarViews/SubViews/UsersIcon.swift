//
//  AccountIcon.swift
//  MenuApp
//
//  Created by Александра Маслова on 03.07.2023.
//

import SwiftUI

struct UsersIcon: View {
    var body: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.black.opacity(0.35))
    }
}
