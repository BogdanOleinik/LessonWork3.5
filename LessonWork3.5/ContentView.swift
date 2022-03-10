//
//  ContentView.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 10.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Home")
                }
            UserProfile()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
