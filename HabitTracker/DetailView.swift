//
//  DetailView.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/12/21.
//

import SwiftUI

struct DetailView: View {
    var activity: Activity
//    var count: Int
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text(activity.title)
                .font(.headline)
            Text(activity.description)
            Text("Completed \(String(self.count)) times")
            Spacer()
            Button("Log Another") {
                self.count += 1
            }
        }
    }
    
    init(activity: Activity) {
        self.activity = activity
        self.count = activity.times
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(activity: Activity(title: "Test",
                                      description: "New activity by me",
                                      times: 1))
    }
}
