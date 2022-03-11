//
//  FlightBoard.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 10.03.2022.
//

import SwiftUI

struct FlightBoard: View {
    @State private var hideCanceled = false
    
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var showFlights: [FlightInformation] {
        hideCanceled
        ? flightInfo.filter { $0.status != .cancelled }
        : flightInfo
    }
    
    var body: some View {
        List(showFlights) { flight in
                FlightRow(flight: flight)
        }
        .listStyle(.plain)
        .navigationTitle(boardName)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Toggle("Wide Cancelled", isOn: $hideCanceled)
                    .toggleStyle(.switch)
            }
        }
    }
}

struct FlightBoard_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoard(
            boardName: "Flight Board",
                    flightInfo: FlightInformation.generateFlights()
        )
    }
}
