//
//  ContentView.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/11/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var allActivities = Activities()
    @State private var showingAddView = false
    
    var body: some View {
        NavigationView {
            List(allActivities.items) { activity in
                NavigationLink(destination: DetailView(activity: activity)) {
                    Text(activity.title)
                }
//                .onDelete(perform: removeItems)
            }
            .navigationBarTitle("Habits")
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingAddView = true
                }) {
                    Image(systemName: "plus")
                }
            )
            .sheet(isPresented: $showingAddView, content: {
                AddView(activities: self.allActivities)
            })
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        allActivities.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
