//
//  CategoryDetailView.swift
//  MenuApp
//
//  Created by Александра Маслова on 03.07.2023.
//

import SwiftUI

struct CategoryDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var category: Category
    
    var body: some View {
        VStack {
            Text(category.name)
                .font(.system(size: 18))
                .bold()
                .padding()
        }
        .navigationBarTitle(category.name, displayMode: .automatic)
        
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
        .navigationBarItems(trailing: UsersIcon())
        .accentColor(.black)
    }
    
    var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image("chevron")
                .resizable()
                .frame(width: 6, height: 12)
                .padding(.leading, 8)
        }
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {        
        CategoryDetailView(category: Category(id: 9, name: "Название категории", imageUrl: URL(fileURLWithPath: "")))
    }
}
