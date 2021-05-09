//
//  NavigationView.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        VStack {
            HStack {
                Color.yellow.frame(width: 30, height: 30, alignment: .center)
                    .overlay(
                        Text("C")
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                    )
                
                Spacer()
                Image(systemName: "camera")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .overlay(
                Text("Search")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            )
            .padding(.top, CGFloat(UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0))
            .background(Color("ColorPrimary"))
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
            .previewLayout(.sizeThatFits)
    }
}
