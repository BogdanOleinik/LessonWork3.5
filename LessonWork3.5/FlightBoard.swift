//
//  FlightBoard.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 10.03.2022.
//

import SwiftUI

struct FlightBoard: View {
    
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var body: some View {
        VStack {
            Text(boardName)
                .font(.title)
                List(flightInfo) { flight in
                    Text("\(flight.airline) \(flight.number)")
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
