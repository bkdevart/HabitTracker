//
//  Activities.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/11/21.
//

import Foundation

struct Activity {
    var title: String
    var description: String
}

class Activities: ObservableObject {
    @Published var activities = [Activity]()
}

