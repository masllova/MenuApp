//
//  CategorySelected.swift
//  MenuApp
//
//  Created by Александра Маслова on 05.07.2023.
//

import SwiftUI

struct  CategorySelected: View {
    @Binding var selectedTag: Tag
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 8) {
                ForEach(Tag.allCases, id: \.self) { tag in
                    Text(tag.rawValue)
                        .foregroundColor(selectedTag == tag ? .white : .black)
                        .font(.system(size: 14))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 16)
                        .background(selectedTag == tag ? Color.blue : Color(red: 0.97, green: 0.97, blue: 0.96))
                        .cornerRadius(8)
                        .onTapGesture {
                            selectedTag = tag
                        }
                }
            } .padding()
        }
        .padding(.top, 16)
        .frame(maxHeight: 50)
    }
    
}
