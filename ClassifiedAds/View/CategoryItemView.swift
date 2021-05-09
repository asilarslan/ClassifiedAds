//
//  CategoryItemView.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import SwiftUI

struct CategoryItemView: View {
    
    var category: Category
    
    var body: some View {
        VStack(spacing: 5){
            HStack {
                Image(category.image)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                VStack(alignment: .leading, spacing: 5) {
                    Text(category.name)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                    Text(category.description)
                        .font(.footnote)
                        .lineLimit(1)
                        .foregroundColor(.gray)
                    
                }
                Spacer()
                Image(systemName: "chevron.forward")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 10)
            
            Divider().padding(.leading, 70)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 5)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: Category(name: "Estate", image: "icon_estate", description: "Housing, Office, Land, Projects, Building"))
            .previewLayout(.sizeThatFits)
    }
}
