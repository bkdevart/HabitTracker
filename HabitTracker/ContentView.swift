//
//  ContentView.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/11/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var allActivities = Activities()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allActivities.activities, id:\.title) {item in
                    Text(item.title)
                }
                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Habits")
            .navigationBarItems(trailing:
                Button(action: {
                    let newActivity = Activity(title: "Test", description: "Personal")
                    self.allActivities.activities.append(newActivity)
                }) {
                    Image(systemName: "plus")
                }
            )
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        allActivities.activities.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
