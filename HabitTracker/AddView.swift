//
//  AddView.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/12/21.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var activities: Activities
    @State private var title = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextField("Description", text: $description)
            }
            .navigationBarTitle("Add new habit")
            .navigationBarItems(trailing:
                Button("Save") {
                    if self.description != "" {
                        let item = Activity(title: self.title, description: self.description)
                        self.activities.items.append(item)
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }
            )
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(activities: Activities())
    }
}
