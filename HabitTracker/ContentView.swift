//
//  ContentView.swift
//  HabitTracker
//
//  Created by Brandon Knox on 4/11/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var activities = Activities()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
