//
//  ContentView.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationView()
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0) {
                    SearchBarView()
                    Divider()
                        .foregroundColor(.gray)
                    CategoriesView()
                        .environmentObject(contentViewModel)
                }
            })
        }
        .background(Color("ColorBackground").ignoresSafeArea())
        .edgesIgnoringSafeArea(.top)
        .onAppear(){
            contentViewModel.fetchCategories()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
