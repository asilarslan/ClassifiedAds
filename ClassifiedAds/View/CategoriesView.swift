//
//  CategoriesView.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import SwiftUI

struct CategoriesView: View {
    
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    var body: some View {
        VStack(spacing: 0){
            ForEach(contentViewModel.categories) { category in
                CategoryItemView(category: category)
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .environmentObject(ContentViewModel())
    }
}
