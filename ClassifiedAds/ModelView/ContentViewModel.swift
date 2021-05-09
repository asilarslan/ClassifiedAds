//
//  ContentViewModel.swift
//  ClassifiedAds
//
//  Created by Asil Arslan on 9.05.2021.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var categories = [Category]()
    
    func fetchCategories() {
        
        let data: [Category] = [
            Category(name: "Estate", image: "icon_estate", description: "Housing, Office, Land, Projects, Building"),
            Category(name: "Vehicle", image: "icon_vehicle", description: "Cars, Terrain, SUV & Pick-up"),
            Category(name: "Automotive Equipment, Motorcycle Equipment", image: "icon_spare", description: "Cars, Terrain, SUV & Pick-up"),
            Category(name: "Second Hand and Zero Shopping", image: "icon_shopping", description: "Computer, Phone"),
            Category(name: "Construction Machinery and Industry", image: "icon_tractor", description: "Tracktor"),
            Category(name: "Construction Machinery and Industry", image: "icon_tool", description: "Plumbers, Painters"),
            Category(name: "Teachers", image: "icon_book", description: "Private Tutors"),
            Category(name: "Job Postings", image: "icon_work", description: "Job Ads"),
            Category(name: "Auxiliary Callers", image: "icon_helper", description: "Nanny"),
        ]
        
        categories.append(contentsOf: data)

    }
    
}
