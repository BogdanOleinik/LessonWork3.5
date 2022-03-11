//
//  FlightBoardInformation.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 11.03.2022.
//

import SwiftUI

struct FlightBoardInformation: View {
    
    @Binding var isPressented: Bool
    let flight: FlightInformation
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                Spacer()
                Button(action: { isPressented.toggle() }) {
                    Text("Done")
                }
            }
            Text("\(flight.direction == .arrival ? "From" : "To") \(flight.otherAirport)")
            Text(flight.flightStatus)
                .foregroundColor(Color(flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
        .navigationTitle("Flight Information")
    }
}

struct FlightBoardInformation_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardInformation(isPressented: .constant(true), flight: FlightInformation.generateFlight())
    }
}
