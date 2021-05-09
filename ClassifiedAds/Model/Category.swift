//
//  Category.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import Foundation

struct Category: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
}
