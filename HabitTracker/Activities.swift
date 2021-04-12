//
//  Activities.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/11/21.
//

import Foundation

class Activities: ObservableObject {
    @Published var activities = [Activity]()
}

struct Activity {
    var title: String
    var description: String
}
