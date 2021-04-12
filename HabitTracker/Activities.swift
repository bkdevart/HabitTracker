//
//  Activities.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/11/21.
//

import Foundation

struct Activity: Codable {
    var title: String
    var description: String
}

class Activities: ObservableObject {
    @Published var items = [Activity]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try?
                encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let items = UserDefaults.standard.data(forKey: "Items")
        {
            let decoder = JSONDecoder()
            
            if let decoded = try?
                decoder.decode([Activity].self,
                               from: items) {
                self.items = decoded
                return
            }
        }
        
        self.items = []
    }
}

