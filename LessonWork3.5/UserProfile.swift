//
//  UserProfile.swift
//  LessonWork3.5
//
//  Created by Олейник Богдан on 10.03.2022.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 120, height: 120)
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
