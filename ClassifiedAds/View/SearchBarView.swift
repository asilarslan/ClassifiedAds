//
//  SearchBarView.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            Text("Search by word or ad ID")
            Spacer()
            Image(systemName: "mic")
        }
        .foregroundColor(.gray)
        .padding(10)
        .background(Color.gray.opacity(0.2).cornerRadius(10))
        .padding(10)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
    }
}
