//
//  AddView.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/12/21.
//

import SwiftUI

struct AddView: View {
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
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(activities: Activities())
    }
}
