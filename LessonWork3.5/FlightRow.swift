//
//  FlightRow.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 11.03.2022.
//

import SwiftUI

struct FlightRow: View {
    
    let flight: FlightInformation
    @State private var isPressented = false
    
    var body: some View {
        Button(action: {
            isPressented.toggle()
        }) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .frame(width: 120, alignment: .leading)
                Text("\(flight.otherAirport)")
                    .frame(alignment: .leading)
                Spacer()
                Text("\(flight.flightStatus)")
                    .frame(alignment: .trailing)
            }
        }
        .sheet(isPresented: $isPressented) {
            FlightBoardInformation(isPressented: $isPressented, flight: flight)
        }
    }
}

struct FlightRow_Previews: PreviewProvider {
    static var previews: some View {
        FlightRow(flight: FlightInformation.generateFlight())
    }
}
