//
//  HomeScreen.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 10.03.2022.
//

import SwiftUI

struct HomeScreen: View {
    
    let flightInfo = FlightInformation.generateFlights()
    
    var body: some View {
        NavigationView {
            ZStack {
                Image(systemName: "airplane")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .rotationEffect(.degrees(-90))
                    .opacity(0.1)
                VStack(alignment: .leading, spacing: 10) {
                    NavigationLink("Arrivals") {
                        FlightBoard(
                            boardName: "Arrivals",
                            flightInfo: flightInfo.filter { $0.direction == .departure }
                        )
                    }
                    NavigationLink("Departures") {
                        FlightBoard(
                            boardName: "Departures",
                            flightInfo: flightInfo.filter { $0.direction == .departure }
                        )
                    }
                    NavigationLink("Flight Time Line") {
                        TimeLineInfo(flights: flightInfo)
                    }
                    Spacer()
                }
                .padding()
                .font(.title)
            }
            .navigationTitle("Airport")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
